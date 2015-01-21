.class enum Lcom/tutego/jrtf/RtfTextPara$TabKind$3;
.super Lcom/tutego/jrtf/RtfTextPara$TabKind;
.source "RtfTextPara.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutego/jrtf/RtfTextPara$TabKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tutego/jrtf/RtfTextPara$TabKind;-><init>(Ljava/lang/String;ILcom/tutego/jrtf/RtfTextPara$TabKind;)V

    .line 1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    const-string v0, "\\tqdec"

    return-object v0
.end method
