.class Lcom/zte/backup/utils/VersionInfo3G$1;
.super Ljava/lang/Object;
.source "VersionInfo3G.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/backup/utils/VersionInfo3G;->getRootElement()Landroid/sax/RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/backup/utils/VersionInfo3G;


# direct methods
.method constructor <init>(Lcom/zte/backup/utils/VersionInfo3G;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/backup/utils/VersionInfo3G$1;->this$0:Lcom/zte/backup/utils/VersionInfo3G;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 3
    .parameter "body"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G$1;->this$0:Lcom/zte/backup/utils/VersionInfo3G;

    #getter for: Lcom/zte/backup/utils/VersionInfo3G;->mData:Lcom/zte/backup/utils/VersionInfo3G$CmccData;
    invoke-static {v0}, Lcom/zte/backup/utils/VersionInfo3G;->access$2(Lcom/zte/backup/utils/VersionInfo3G;)Lcom/zte/backup/utils/VersionInfo3G$CmccData;

    move-result-object v0

    iput-object p1, v0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->reMark:Ljava/lang/String;

    .line 435
    const-string v0, "VersionCMCC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VersionCMCC  contacts: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void
.end method
