.class public Lcom/dolby/instoredemoapp/TextInfo;
.super Ljava/lang/Object;
.source "TextInfo.java"


# instance fields
.field public text:Ljava/lang/String;

.field public textColor:Ljava/lang/String;

.field public textFont:Ljava/lang/String;

.field public textPos:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/dolby/instoredemoapp/TextInfo;->text:Ljava/lang/String;

    .line 23
    const-string v0, "unset"

    iput-object v0, p0, Lcom/dolby/instoredemoapp/TextInfo;->textColor:Ljava/lang/String;

    .line 24
    const-string v0, "unset"

    iput-object v0, p0, Lcom/dolby/instoredemoapp/TextInfo;->textFont:Ljava/lang/String;

    .line 25
    const-string v0, "unset"

    iput-object v0, p0, Lcom/dolby/instoredemoapp/TextInfo;->textPos:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "txt"
    .parameter "color"
    .parameter "font"
    .parameter "pos"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/dolby/instoredemoapp/TextInfo;->text:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/dolby/instoredemoapp/TextInfo;->textColor:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/dolby/instoredemoapp/TextInfo;->textFont:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/dolby/instoredemoapp/TextInfo;->textPos:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextInfo:\n    text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/TextInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    textColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/TextInfo;->textColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    font = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/TextInfo;->textFont:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/instoredemoapp/TextInfo;->textPos:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method
