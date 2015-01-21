.class public Lcom/tutego/jrtf/RtfInfo;
.super Ljava/lang/Object;
.source "RtfInfo.java"


# instance fields
.field rtf:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "rtf"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tutego/jrtf/RtfInfo;->rtf:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static author(Ljava/lang/String;)Lcom/tutego/jrtf/RtfInfo;
    .locals 3
    .parameter "author"

    .prologue
    .line 107
    new-instance v0, Lcom/tutego/jrtf/RtfInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\\author "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tutego/jrtf/Rtf;->asRtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static subject(Ljava/lang/String;)Lcom/tutego/jrtf/RtfInfo;
    .locals 3
    .parameter "subject"

    .prologue
    .line 85
    new-instance v0, Lcom/tutego/jrtf/RtfInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\\subject "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tutego/jrtf/Rtf;->asRtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static title(Ljava/lang/String;)Lcom/tutego/jrtf/RtfInfo;
    .locals 3
    .parameter "title"

    .prologue
    .line 96
    new-instance v0, Lcom/tutego/jrtf/RtfInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\\title "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tutego/jrtf/Rtf;->asRtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tutego/jrtf/RtfInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
