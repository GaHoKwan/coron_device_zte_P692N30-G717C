.class public Lcom/tutego/jrtf/RtfHeaderFont;
.super Lcom/tutego/jrtf/RtfHeader;
.source "RtfHeaderFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutego/jrtf/RtfHeaderFont$CharSet;,
        Lcom/tutego/jrtf/RtfHeaderFont$FontFamily;,
        Lcom/tutego/jrtf/RtfHeaderFont$Pitch;
    }
.end annotation


# static fields
.field public static final ARIAL:Ljava/lang/String; = "Arial"

.field public static final COURIER:Ljava/lang/String; = "Courier"

.field public static final HELVETICA:Ljava/lang/String; = "Arial"

.field public static final SYMBOL:Ljava/lang/String; = "Symbol"

.field public static final TIMES_ROMAN:Ljava/lang/String; = "Times New Roman"

.field public static final WINDINGS:Ljava/lang/String; = "Windings"

.field public static final ZAPFDINGBATS:Ljava/lang/String; = "Windings"


# instance fields
.field private charSet:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

.field private fontfamily:Lcom/tutego/jrtf/RtfHeaderFont$FontFamily;

.field private fontname:Ljava/lang/String;

.field private fontnum:I

.field private pitch:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "fontname"

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/tutego/jrtf/RtfHeader;-><init>()V

    .line 186
    sget-object v0, Lcom/tutego/jrtf/RtfHeaderFont$FontFamily;->NIL:Lcom/tutego/jrtf/RtfHeaderFont$FontFamily;

    iput-object v0, p0, Lcom/tutego/jrtf/RtfHeaderFont;->fontfamily:Lcom/tutego/jrtf/RtfHeaderFont$FontFamily;

    .line 189
    sget-object v0, Lcom/tutego/jrtf/RtfHeaderFont$CharSet;->ANSI:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    iput-object v0, p0, Lcom/tutego/jrtf/RtfHeaderFont;->charSet:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 200
    iput-object p1, p0, Lcom/tutego/jrtf/RtfHeaderFont;->fontname:Ljava/lang/String;

    .line 201
    return-void
.end method


# virtual methods
.method public at(I)Lcom/tutego/jrtf/RtfHeader;
    .locals 2
    .parameter "fontnum"

    .prologue
    .line 252
    if-gez p1, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Font number is not allowed to be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iput p1, p0, Lcom/tutego/jrtf/RtfHeaderFont;->fontnum:I

    .line 256
    return-object p0
.end method

.method public charset(Lcom/tutego/jrtf/RtfHeaderFont$CharSet;)Lcom/tutego/jrtf/RtfHeaderFont;
    .locals 2
    .parameter "charSet"

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char set can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iput-object p1, p0, Lcom/tutego/jrtf/RtfHeaderFont;->charSet:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    .line 228
    return-object p0
.end method

.method public family(Lcom/tutego/jrtf/RtfHeaderFont$FontFamily;)Lcom/tutego/jrtf/RtfHeaderFont;
    .locals 2
    .parameter "fontfamily"

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Font family can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iput-object p1, p0, Lcom/tutego/jrtf/RtfHeaderFont;->fontfamily:Lcom/tutego/jrtf/RtfHeaderFont$FontFamily;

    .line 214
    return-object p0
.end method

.method public pitch(Lcom/tutego/jrtf/RtfHeaderFont$Pitch;)Lcom/tutego/jrtf/RtfHeaderFont;
    .locals 2
    .parameter "pitch"

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pitch can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/tutego/jrtf/RtfHeaderFont;->pitch:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    .line 242
    return-object p0
.end method

.method writeFontInfo(Ljava/lang/Appendable;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    const-string v0, "{\\f"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget v1, p0, Lcom/tutego/jrtf/RtfHeaderFont;->fontnum:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 286
    const-string v1, "\\f"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p0, Lcom/tutego/jrtf/RtfHeaderFont;->fontfamily:Lcom/tutego/jrtf/RtfHeaderFont$FontFamily;

    invoke-virtual {v1}, Lcom/tutego/jrtf/RtfHeaderFont$FontFamily;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    .line 287
    iget-object v0, p0, Lcom/tutego/jrtf/RtfHeaderFont;->charSet:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\\fcharset"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutego/jrtf/RtfHeaderFont;->charSet:Lcom/tutego/jrtf/RtfHeaderFont$CharSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    .line 288
    iget-object v0, p0, Lcom/tutego/jrtf/RtfHeaderFont;->pitch:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\\fprq"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutego/jrtf/RtfHeaderFont;->pitch:Lcom/tutego/jrtf/RtfHeaderFont$Pitch;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 289
    const-string v1, " "

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p0, Lcom/tutego/jrtf/RtfHeaderFont;->fontname:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, ";}"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 290
    return-void

    .line 287
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 288
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
