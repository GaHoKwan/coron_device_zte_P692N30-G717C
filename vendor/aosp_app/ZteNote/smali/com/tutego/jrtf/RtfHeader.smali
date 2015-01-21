.class public abstract Lcom/tutego/jrtf/RtfHeader;
.super Ljava/lang/Object;
.source "RtfHeader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static color(III)Lcom/tutego/jrtf/RtfHeaderColor;
    .locals 4
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 70
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderColor;

    and-int/lit16 v1, p0, 0xff

    and-int/lit16 v2, p1, 0xff

    and-int/lit16 v3, p2, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcom/tutego/jrtf/RtfHeaderColor;-><init>(III)V

    return-object v0
.end method

.method public static font(Ljava/lang/String;)Lcom/tutego/jrtf/RtfHeaderFont;
    .locals 1
    .parameter "fontname"

    .prologue
    .line 57
    new-instance v0, Lcom/tutego/jrtf/RtfHeaderFont;

    invoke-direct {v0, p0}, Lcom/tutego/jrtf/RtfHeaderFont;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
