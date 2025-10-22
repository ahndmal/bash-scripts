gcloud functions deploy TelegramBotMessage --runtime=java11 --trigger-event=providers/cloud.firestore/eventTypes/document.write --trigger-resource=projects/project_id/databases/(default)/documents/messages/{pushId}

gcloud functions deploy AnswerHook --runtime=java11 --entry-point=com.anma.AnswerHook --runtime=java11 --trigger-http --allow-unauthenticated