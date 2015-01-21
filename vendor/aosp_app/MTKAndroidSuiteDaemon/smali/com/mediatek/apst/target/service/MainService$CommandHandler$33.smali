.class Lcom/mediatek/apst/target/service/MainService$CommandHandler$33;
.super Ljava/lang/Object;
.source "MainService.java"

# interfaces
.implements Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/apst/target/service/MainService$CommandHandler;->handleBackupFeatures(Lcom/mediatek/apst/util/command/BaseCommand;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

.field final synthetic val$reqToken:I


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/service/MainService$CommandHandler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2868
    iput-object p1, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler$33;->this$1:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    iput p2, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler$33;->val$reqToken:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume([BII)V
    .locals 2
    .parameter "block"
    .parameter "blockNo"
    .parameter "totalNo"

    .prologue
    .line 2873
    new-instance v0, Lcom/mediatek/apst/util/command/backup/RestoreContactsRsp;

    iget v1, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler$33;->val$reqToken:I

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/RestoreContactsRsp;-><init>(I)V

    .line 2875
    .local v0, rsp:Lcom/mediatek/apst/util/command/backup/RestoreContactsRsp;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/util/command/backup/RestoreContactsRsp;->setPhase(I)V

    .line 2877
    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setRaw([B)V

    .line 2878
    invoke-virtual {v0, p2}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setProgress(I)V

    .line 2879
    invoke-virtual {v0, p3}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setTotal(I)V

    .line 2881
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler$33;->this$1:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    iget-object v1, v1, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v1, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    .line 2882
    return-void
.end method
