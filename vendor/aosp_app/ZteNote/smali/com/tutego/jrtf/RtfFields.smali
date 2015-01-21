.class public Lcom/tutego/jrtf/RtfFields;
.super Ljava/lang/Object;
.source "RtfFields.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authorField()Lcom/tutego/jrtf/RtfText;
    .locals 1

    .prologue
    .line 100
    const-string v0, "AUTHOR"

    invoke-static {v0}, Lcom/tutego/jrtf/RtfFields;->field(Ljava/lang/String;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    return-object v0
.end method

.method public static field(Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfText;
    .locals 3
    .parameter "fieldInstructions"

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Refresh \'F9\'"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tutego/jrtf/RtfPara;->p([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfTextPara;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tutego/jrtf/RtfText;->field(Lcom/tutego/jrtf/RtfPara;Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    return-object v0
.end method

.method public static field(Ljava/lang/String;)Lcom/tutego/jrtf/RtfText;
    .locals 2
    .parameter "fieldInstructions"

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/tutego/jrtf/RtfPara;->p([Ljava/lang/Object;)Lcom/tutego/jrtf/RtfTextPara;

    move-result-object v0

    invoke-static {v0}, Lcom/tutego/jrtf/RtfFields;->field(Lcom/tutego/jrtf/RtfPara;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    return-object v0
.end method

.method public static pageNumberField()Lcom/tutego/jrtf/RtfText;
    .locals 1

    .prologue
    .line 82
    const-string v0, "PAGE"

    invoke-static {v0}, Lcom/tutego/jrtf/RtfFields;->field(Ljava/lang/String;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    return-object v0
.end method

.method public static sectionPagesField()Lcom/tutego/jrtf/RtfText;
    .locals 1

    .prologue
    .line 91
    const-string v0, "SECTIONPAGES"

    invoke-static {v0}, Lcom/tutego/jrtf/RtfFields;->field(Ljava/lang/String;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    return-object v0
.end method

.method public static tableOfContentsField()Lcom/tutego/jrtf/RtfText;
    .locals 1

    .prologue
    .line 109
    const-string v0, "TOC \\\\f \\\\h \\\\u \\\\o \"1-5\" "

    invoke-static {v0}, Lcom/tutego/jrtf/RtfFields;->field(Ljava/lang/String;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    return-object v0
.end method

.method public static timeField(Ljava/lang/String;)Lcom/tutego/jrtf/RtfText;
    .locals 2
    .parameter "format"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "time \\@ \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/tutego/jrtf/RtfFields;->field(Ljava/lang/String;)Lcom/tutego/jrtf/RtfText;

    move-result-object v0

    return-object v0
.end method
