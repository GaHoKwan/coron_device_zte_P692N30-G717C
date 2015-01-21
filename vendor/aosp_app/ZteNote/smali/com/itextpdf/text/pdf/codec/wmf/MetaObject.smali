.class public Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;
.super Ljava/lang/Object;
.source "MetaObject.java"


# static fields
.field public static final META_BRUSH:I = 0x2

.field public static final META_FONT:I = 0x3

.field public static final META_NOT_SUPPORTED:I = 0x0

.field public static final META_PEN:I = 0x1


# instance fields
.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;->type:I

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;->type:I

    .line 57
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;->type:I

    .line 58
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;->type:I

    return v0
.end method
