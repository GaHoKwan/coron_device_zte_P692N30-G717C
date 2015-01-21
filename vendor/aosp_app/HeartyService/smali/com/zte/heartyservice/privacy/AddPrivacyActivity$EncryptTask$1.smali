.class Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask$1;
.super Ljava/lang/Object;
.source "AddPrivacyActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask$1;->this$1:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "n"
    .parameter "percent"
    .parameter "name"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask$1;->this$1:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0a0318

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    #calls: Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;->access$1100(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;[Ljava/lang/Object;)V

    .line 664
    return-void
.end method
