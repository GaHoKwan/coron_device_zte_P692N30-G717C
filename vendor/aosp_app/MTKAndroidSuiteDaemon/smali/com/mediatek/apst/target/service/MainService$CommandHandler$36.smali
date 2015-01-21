.class Lcom/mediatek/apst/target/service/MainService$CommandHandler$36;
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
    .line 2922
    iput-object p1, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler$36;->this$1:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    iput p2, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler$36;->val$reqToken:I

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
    .line 2925
    new-instance v0, Lcom/mediatek/apst/util/command/backup/GetMmsDataForBackupRsp;

    iget v1, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler$36;->val$reqToken:I

    invoke-direct {v0, v1}, Lcom/mediatek/apst/util/command/backup/GetMmsDataForBackupRsp;-><init>(I)V

    .line 2927
    .local v0, rsp:Lcom/mediatek/apst/util/command/backup/GetMmsDataForBackupRsp;
    invoke-virtual {v0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setRaw([B)V

    .line 2928
    invoke-virtual {v0, p2}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setProgress(I)V

    .line 2929
    invoke-virtual {v0, p3}, Lcom/mediatek/apst/util/command/RawBlockResponse;->setTotal(I)V

    .line 2930
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$CommandHandler$36;->this$1:Lcom/mediatek/apst/target/service/MainService$CommandHandler;

    iget-object v1, v1, Lcom/mediatek/apst/target/service/MainService$CommandHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v1, v0}, Lcom/mediatek/apst/target/service/MainService;->onRespond(Lcom/mediatek/apst/util/command/BaseCommand;)V

    .line 2931
    return-void
.end method
