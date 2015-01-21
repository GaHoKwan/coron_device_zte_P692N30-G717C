.class Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramsPlusLang;
.super Ljava/lang/Object;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NGramsPlusLang"
.end annotation


# instance fields
.field fLang:Ljava/lang/String;

.field fNGrams:[I


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .locals 0
    .parameter "la"
    .parameter "ng"

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramsPlusLang;->fLang:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramsPlusLang;->fNGrams:[I

    .line 176
    return-void
.end method
