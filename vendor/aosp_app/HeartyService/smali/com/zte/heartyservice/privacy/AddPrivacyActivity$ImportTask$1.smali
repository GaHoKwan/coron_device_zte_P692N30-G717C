.class Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask$1;
.super Ljava/lang/Object;
.source "AddPrivacyActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask$1;->this$1:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dissmissPD()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public showPD(II)V
    .locals 5
    .parameter "max"
    .parameter "strID"

    .prologue
    const/4 v4, 0x0

    .line 399
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask$1;->this$1:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    #calls: Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->access$800(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;[Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public updatePD(I)V
    .locals 5
    .parameter "n"

    .prologue
    const/4 v4, -0x1

    .line 405
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask$1;->this$1:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    #calls: Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->access$900(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;[Ljava/lang/Object;)V

    .line 407
    return-void
.end method

.method public updatePDMsg(II)V
    .locals 5
    .parameter "num"
    .parameter "strID"

    .prologue
    const/4 v4, -0x1

    .line 411
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask$1;->this$1:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    #calls: Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->access$1000(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;[Ljava/lang/Object;)V

    .line 413
    return-void
.end method
