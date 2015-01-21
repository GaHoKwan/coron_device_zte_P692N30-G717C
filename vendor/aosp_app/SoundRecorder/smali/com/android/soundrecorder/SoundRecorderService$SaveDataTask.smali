.class public Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;
.super Landroid/os/AsyncTask;
.source "SoundRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/SoundRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorderService;


# direct methods
.method public constructor <init>(Lcom/android/soundrecorder/SoundRecorderService;)V
    .locals 0
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 3
    .parameter "params"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/soundrecorder/SoundRecorderService;->access$700(Lcom/android/soundrecorder/SoundRecorderService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/soundrecorder/SoundRecorderService;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->access$800(Lcom/android/soundrecorder/SoundRecorderService;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 793
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 4
    .parameter "result"

    .prologue
    const-wide/16 v2, 0x0

    .line 804
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #setter for: Lcom/android/soundrecorder/SoundRecorderService;->mUri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/android/soundrecorder/SoundRecorderService;->access$902(Lcom/android/soundrecorder/SoundRecorderService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 805
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #setter for: Lcom/android/soundrecorder/SoundRecorderService;->mCurrentFileDuration:J
    invoke-static {v0, v2, v3}, Lcom/android/soundrecorder/SoundRecorderService;->access$1002(Lcom/android/soundrecorder/SoundRecorderService;J)J

    .line 806
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    const/4 v1, 0x0

    #calls: Lcom/android/soundrecorder/SoundRecorderService;->setCurrentFilePath(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->access$1100(Lcom/android/soundrecorder/SoundRecorderService;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #setter for: Lcom/android/soundrecorder/SoundRecorderService;->mTotalRecordingDuration:J
    invoke-static {v0, v2, v3}, Lcom/android/soundrecorder/SoundRecorderService;->access$1202(Lcom/android/soundrecorder/SoundRecorderService;J)J

    .line 808
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorderService;->access$1300(Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mOnEventListener:Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorderService;->access$1300(Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/soundrecorder/SoundRecorderService$OnEventListener;->onEvent(I)V

    .line 814
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080001

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 793
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/SoundRecorderService$SaveDataTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
