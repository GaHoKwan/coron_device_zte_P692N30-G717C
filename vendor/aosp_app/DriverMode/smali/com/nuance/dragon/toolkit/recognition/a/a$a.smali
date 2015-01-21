.class public final Lcom/nuance/dragon/toolkit/recognition/a/a$a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;

.field public final c:Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

.field public final d:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

.field public final e:D


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->getConfidenceScore()D

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/recognition/a/a$a;-><init>(Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/Token;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;D)V

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/Token;)V
    .locals 7

    const/4 v4, 0x0

    invoke-interface {p3}, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;->getConfidenceScore()D

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/recognition/a/a$a;-><init>(Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/Token;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;D)V

    return-void
.end method

.method private constructor <init>(Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/Token;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/a/a$a;->b:Lcom/nuance/dragon/toolkit/recognition/a/a$a$a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/recognition/a/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/recognition/a/a$a;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/recognition/a/a$a;->d:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    iput-wide p5, p0, Lcom/nuance/dragon/toolkit/recognition/a/a$a;->e:D

    return-void
.end method
