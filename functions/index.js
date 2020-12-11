const admin = require('firebase-admin');
const functions = require('firebase-functions');
const { user } = require('firebase-functions/lib/providers/auth');
admin.initializeApp();

// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });

// /followers/K9QIRrFtCdWqYk9iHvGva90IBV52/userFollowers/xLyouHHsKzPPzEKrdiorULKMNz73
exports.onCreateFollower = functions
    .firestore
    .document('/followers/{userId}/userFollowers/{userFollowerId}')
    .onCreate(async (snapshot, context) => {
        console.log('Follower Created', snapshot.id);

        const userId = context.params.userId;
        const userFollowerId = context.params.userFollowerId;

        // create followed users posts ref
        const followedUserPostsRef = admin
            .firestore()
            .collection('posts')
            .doc(userId)
            .collection('myPosts');


        // create following user's timeline ref
        const timerlinePostsRef = admin
            .firestore()
            .collection('timeline')
            .doc(userFollowerId)
            .collection('timelinePosts');

        // get followed users posts
        const querySnapshot = await followedUserPostsRef.get();

        // add each user posts to following user's timeline
        querySnapshot.forEach(doc => {
            if (doc.exists) {
                const postId = doc.id;
                const postData = doc.data();

                timerlinePostsRef
                    .doc(postId)
                    .set(postData);
            }
        });
    });

exports.onDeleteFollower = functions
    .firestore
    .document('/followers/{userId}/userFollowers/{userFollowerId}')
    .onDelete(async (snapshot, context) => {
        console.log('Follower Deleted', snapshot.id);

        const userId = context.params.userId;
        const userFollowerId = context.params.userFollowerId;

        const timerlinePostsRef = admin
            .firestore()
            .collection('timeline')
            .doc(userFollowerId)
            .collection('timelinePosts')
            .where("user_id", "==", userId);

        const querySnapshot = await timerlinePostsRef.get();
        querySnapshot.forEach(doc => {
            if (doc.exists) {
                doc.ref.delete();
            }
        });
    });


// when a post i created, add post to timeline follower
exports.onCreatePost = functions
    .firestore
    .document('/posts/{userId}/myPosts/{postId}')
    .onCreate(async (snapshot, context) => {
        console.log('Post Created', snapshot.id);

        const postCreated = snapshot.data();
        const userId = context.params.userId;
        const postId = context.params.postId;

        //get all the follower of ther user who made the post
        const userFollowerRef = admin
            .firestore()
            .collection('followers')
            .doc(userId)
            .collection('userFollowers');


        const querySnapshot = await userFollowerRef.get();

        // Add new post to each follower timeline
        querySnapshot.forEach(doc => {
            const followerUserId = doc.id;

            admin
                .firestore()
                .collection('timeline')
                .doc(followerUserId)
                .collection('timelinePosts')
                .doc(postId)
                .set(postCreated);
        });
    });

exports.onUpdatePost = functions
    .firestore
    .document('/posts/{userId}/myPosts/{postId}')
    .onUpdate(async (change, context) => {
        console.log('Post Updated', change.after.id);

        const postUpdated = change.after.data();
        const userId = context.params.userId;
        const postId = context.params.postId;

        //get all the follower of ther user who made the post
        const userFollowerRef = admin
            .firestore()
            .collection('followers')
            .doc(userId)
            .collection('userFollowers');

        const querySnapshot = await userFollowerRef.get();

        // update each post in each follower timeline
        querySnapshot.forEach(doc => {
            const followerUserId = doc.id;

            admin
                .firestore()
                .collection('timeline')
                .doc(followerUserId)
                .collection('timelinePosts')
                .doc(postId)
                .get().then(doc => {
                    if (doc.exists) {
                        doc.ref.update(postUpdated);
                    }
                });
        });
    });

exports.onDeletePost = functions
    .firestore
    .document('/posts/{userId}/myPosts/{postId}')
    .onDelete(async (snapshot, context) => {
        console.log('Post Deleted', snapshot.id);

        const userId = context.params.userId;
        const postId = context.params.postId;

        //get all the follower of ther user who made the post
        const userFollowerRef = admin
            .firestore()
            .collection('followers')
            .doc(userId)
            .collection('userFollowers');


        const querySnapshot = await userFollowerRef.get();

        // Delete each post in each follower timeline
        querySnapshot.forEach(doc => {
            const followerUserId = doc.id;

            admin
                .firestore()
                .collection('timeline')
                .doc(followerUserId)
                .collection('timelinePosts')
                .doc(postId)
                .get().then(doc => {
                    if (doc.exists) {
                        doc.ref.delete();
                    }
                });
        });
    });
