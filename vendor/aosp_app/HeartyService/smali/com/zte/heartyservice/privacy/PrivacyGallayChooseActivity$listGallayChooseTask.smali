.class Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;
.super Landroid/os/AsyncTask;
.source "PrivacyGallayChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listGallayChooseTask"
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
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;-><init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 228
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->initGallaryChooseBitmap()V

    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 228
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->mListGallayChooseTask:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$402(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;)Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$listGallayChooseTask;

    .line 239
    return-void
.end method
