.class Lcom/android/email/activity/MessageCompose$6;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->updateReadFlag(Lcom/android/emailcommon/provider/EmailContent$Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Lcom/android/emailcommon/provider/EmailContent$Message;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$6;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1264
    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$6;->doInBackground([Lcom/android/emailcommon/provider/EmailContent$Message;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/emailcommon/provider/EmailContent$Message;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 1267
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 1268
    .local v1, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1269
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "flagRead"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1270
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$6;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1271
    const/4 v2, 0x0

    return-object v2
.end method
