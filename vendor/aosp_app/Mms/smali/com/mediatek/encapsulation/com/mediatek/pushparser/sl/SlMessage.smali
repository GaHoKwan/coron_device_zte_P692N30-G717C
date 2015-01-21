.class public Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;
.super Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;
.source "SlMessage.java"


# static fields
.field public static final ACTION_CACHE:I = 0x3

.field public static final ACTION_HIGH:I = 0x2

.field public static final ACTION_LOW:I = 0x1

.field public static final TYPE:Ljava/lang/String; = "SL"


# instance fields
.field public action:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Push Message:SL\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "\nuri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "\naction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Lcom/mediatek/encapsulation/com/mediatek/pushparser/sl/SlMessage;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
