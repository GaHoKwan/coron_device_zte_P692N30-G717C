.class public Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
.super Ljava/io/FilterInputStream;
.source "BinaryTempFileBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/internet/BinaryTempFileBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinaryTempFileBodyInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/internet/BinaryTempFileBody;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/internet/BinaryTempFileBody;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter "in"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/android/emailcommon/internet/BinaryTempFileBody;

    .line 86
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 92
    iget-object v0, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/android/emailcommon/internet/BinaryTempFileBody;

    #getter for: Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->access$000(Lcom/android/emailcommon/internet/BinaryTempFileBody;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 93
    return-void
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/android/emailcommon/internet/BinaryTempFileBody;

    #getter for: Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->access$000(Lcom/android/emailcommon/internet/BinaryTempFileBody;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/android/emailcommon/internet/BinaryTempFileBody;

    #getter for: Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->access$000(Lcom/android/emailcommon/internet/BinaryTempFileBody;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 103
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
