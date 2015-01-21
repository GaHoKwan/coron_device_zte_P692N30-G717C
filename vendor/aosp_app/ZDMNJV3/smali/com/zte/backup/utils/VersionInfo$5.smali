.class Lcom/zte/backup/utils/VersionInfo$5;
.super Ljava/lang/Object;
.source "VersionInfo.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/backup/utils/VersionInfo;->getRootElement()Landroid/sax/RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/backup/utils/VersionInfo;


# direct methods
.method constructor <init>(Lcom/zte/backup/utils/VersionInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/backup/utils/VersionInfo$5;->this$0:Lcom/zte/backup/utils/VersionInfo;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 3
    .parameter "body"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo$5;->this$0:Lcom/zte/backup/utils/VersionInfo;

    #getter for: Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;
    invoke-static {v0}, Lcom/zte/backup/utils/VersionInfo;->access$0(Lcom/zte/backup/utils/VersionInfo;)Lcom/zte/backup/utils/VersionInfo$VersionData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo$VersionData;->smsCount:I

    .line 234
    const-string v0, "VersionInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VersionInfo SMS_NUMBER: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method
