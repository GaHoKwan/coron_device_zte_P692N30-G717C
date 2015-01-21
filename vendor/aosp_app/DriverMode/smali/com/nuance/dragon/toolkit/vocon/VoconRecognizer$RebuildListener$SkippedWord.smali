.class public Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener$SkippedWord;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/grammar/Word;

.field private b:Ljava/lang/String;


# virtual methods
.method public getSlotId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener$SkippedWord;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWord()Lcom/nuance/dragon/toolkit/grammar/Word;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$RebuildListener$SkippedWord;->a:Lcom/nuance/dragon/toolkit/grammar/Word;

    return-object v0
.end method
