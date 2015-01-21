.class Lcom/zte/backup/utils/VersionInfo3G$2;
.super Ljava/lang/Object;
.source "VersionInfo3G.java"

# interfaces
.implements Landroid/sax/StartElementListener;


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
    iput-object p1, p0, Lcom/zte/backup/utils/VersionInfo3G$2;->this$0:Lcom/zte/backup/utils/VersionInfo3G;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "attributes"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G$2;->this$0:Lcom/zte/backup/utils/VersionInfo3G;

    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/backup/utils/VersionInfo3G;->access$3(Lcom/zte/backup/utils/VersionInfo3G;Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo3G$2;->this$0:Lcom/zte/backup/utils/VersionInfo3G;

    #getter for: Lcom/zte/backup/utils/VersionInfo3G;->curReadComponentFolder:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/backup/utils/VersionInfo3G;->access$4(Lcom/zte/backup/utils/VersionInfo3G;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/backup/common/Logging;->d(Ljava/lang/String;)V

    .line 445
    return-void
.end method
