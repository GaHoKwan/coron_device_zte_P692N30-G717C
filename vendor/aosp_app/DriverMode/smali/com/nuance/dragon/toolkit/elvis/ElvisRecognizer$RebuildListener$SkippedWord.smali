.class public Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener$SkippedWord;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/grammar/Word;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/Word;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener$SkippedWord;->a:Lcom/nuance/dragon/toolkit/grammar/Word;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener$SkippedWord;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSlotId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener$SkippedWord;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWord()Lcom/nuance/dragon/toolkit/grammar/Word;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$RebuildListener$SkippedWord;->a:Lcom/nuance/dragon/toolkit/grammar/Word;

    return-object v0
.end method
