.class Lzte/com/cn/cloudnotepad/NoteApp$1;
.super Landroid/os/AsyncTask;
.source "NoteApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/NoteApp;->saveExampleTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/NoteApp;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/NoteApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/NoteApp$1;->this$0:Lzte/com/cn/cloudnotepad/NoteApp;

    .line 120
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/NoteApp$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 125
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    const v1, 0x7f020021

    const-string v2, "ed571d698d42b22a30faff052066b08f.jpg"

    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->storeResourceToSdcard(Landroid/content/Context;ILjava/lang/String;)V

    .line 126
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    const v1, 0x7f020039

    const-string v2, "796f9f0593610f0c930256cffd4c3f63.jpg"

    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->storeResourceToSdcard(Landroid/content/Context;ILjava/lang/String;)V

    .line 127
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    const v1, 0x7f0200d5

    const-string v2, "a12b688e8bdcf7e9ec666a96d482922b.jpg"

    invoke-static {v0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->storeResourceToSdcard(Landroid/content/Context;ILjava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/NoteApp$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 137
    return-void
.end method
