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
    .document("/followers/{userId}/userFollowers/{userFollowerId}")
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
    .document("/followers/{userId}/userFollowers/{userFollowerId}")
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
