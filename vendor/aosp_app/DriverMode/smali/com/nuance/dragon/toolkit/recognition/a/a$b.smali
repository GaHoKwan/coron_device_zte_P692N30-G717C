.class public final Lcom/nuance/dragon/toolkit/recognition/a/a$b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

.field public final d:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;)V
    .locals 6

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->getConfidenceScore()D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/recognition/a/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;D)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/recognition/a/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;D)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/a/a$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/recognition/a/a$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/recognition/a/a$b;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    iput-wide p4, p0, Lcom/nuance/dragon/toolkit/recognition/a/a$b;->d:D

    return-void
.end method
