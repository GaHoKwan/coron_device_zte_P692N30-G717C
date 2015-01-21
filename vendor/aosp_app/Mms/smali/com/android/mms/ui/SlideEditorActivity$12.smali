.class Lcom/android/mms/ui/SlideEditorActivity$12;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 12
    .parameter "part"
    .parameter "append"

    .prologue
    const v11, 0x7f0b026f

    const/4 v10, 0x0

    .line 1080
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 1081
    .local v0, context:Landroid/content/Context;
    if-nez p1, :cond_0

    .line 1082
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v9, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v11, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1123
    :goto_0
    return-void

    .line 1088
    :cond_0
    sget v1, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 1089
    .local v1, createMode:I
    sput v10, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 1092
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$1500(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 1093
    .local v3, messageId:J
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    .line 1094
    .local v6, persister:Lcom/google/android/mms/pdu/PduPersister;
    const/4 v7, 0x0

    invoke-virtual {v6, p1, v3, v4, v7}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v5

    .line 1097
    .local v5, newUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v8, 0x1

    #setter for: Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z
    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$002(Lcom/android/mms/ui/SlideEditorActivity;Z)Z

    .line 1098
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #getter for: Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    invoke-static {v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$100(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v8

    invoke-virtual {v7, v8, v5}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 1099
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v8, 0x7f0b0288

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1600(Lcom/android/mms/ui/SlideEditorActivity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1119
    .end local v3           #messageId:J
    .end local v5           #newUri:Landroid/net/Uri;
    .end local v6           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :goto_1
    sput v1, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 1122
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->showSizeDisplay()V
    invoke-static {v7}, Lcom/android/mms/ui/SlideEditorActivity;->access$500(Lcom/android/mms/ui/SlideEditorActivity;)V

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v2

    .line 1101
    .local v2, e:Lcom/google/android/mms/MmsException;
    :try_start_1
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const-string v8, "add picture failed"

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/mms/ui/SlideEditorActivity;->access$1700(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V

    .line 1102
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f0b026f

    iget-object v10, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/SlideEditorActivity;->access$1300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1119
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v7

    sput v1, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    throw v7

    .line 1105
    :catch_1
    move-exception v2

    .line 1106
    .local v2, e:Lcom/android/mms/UnsupportContentTypeException;
    :try_start_2
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f0b026b

    iget-object v10, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/SlideEditorActivity;->access$1300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v10, 0x7f0b026c

    iget-object v11, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v11}, Lcom/android/mms/ui/SlideEditorActivity;->access$1300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1109
    .end local v2           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v2

    .line 1110
    .local v2, e:Lcom/android/mms/ResolutionException;
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f0b0270

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v10, 0x7f0b0271

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1113
    .end local v2           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v2

    .line 1114
    .local v2, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v9, 0x7f0b026d

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/mms/ui/SlideEditorActivity;->access$600(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v10, 0x7f0b026f

    iget-object v11, p0, Lcom/android/mms/ui/SlideEditorActivity$12;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;
    invoke-static {v11}, Lcom/android/mms/ui/SlideEditorActivity;->access$1300(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/SlideEditorActivity;->access$1400(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
