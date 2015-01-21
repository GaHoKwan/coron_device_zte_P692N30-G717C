.class public Lcom/itextpdf/text/pdf/codec/wmf/MetaState;
.super Ljava/lang/Object;
.source "MetaState.java"


# static fields
.field public static final ALTERNATE:I = 0x1

.field public static final OPAQUE:I = 0x2

.field public static final TA_BASELINE:I = 0x18

.field public static final TA_BOTTOM:I = 0x8

.field public static final TA_CENTER:I = 0x6

.field public static final TA_LEFT:I = 0x0

.field public static final TA_NOUPDATECP:I = 0x0

.field public static final TA_RIGHT:I = 0x2

.field public static final TA_TOP:I = 0x0

.field public static final TA_UPDATECP:I = 0x1

.field public static final TRANSPARENT:I = 0x1

.field public static final WINDING:I = 0x2


# instance fields
.field public MetaObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;",
            ">;"
        }
    .end annotation
.end field

.field public backgroundMode:I

.field public currentBackgroundColor:Lcom/itextpdf/text/BaseColor;

.field public currentBrush:Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

.field public currentFont:Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;

.field public currentPen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

.field public currentPoint:Lcom/itextpdf/text/pdf/codec/wmf/Point;

.field public currentTextColor:Lcom/itextpdf/text/BaseColor;

.field public extentWx:I

.field public extentWy:I

.field public lineJoin:I

.field public offsetWx:I

.field public offsetWy:I

.field public polyFillMode:I

.field public savedStates:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/itextpdf/text/pdf/codec/wmf/MetaState;",
            ">;"
        }
    .end annotation
.end field

.field public scalingX:F

.field public scalingY:F

.field public textAlign:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/itextpdf/text/BaseColor;->WHITE:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 76
    sget-object v0, Lcom/itextpdf/text/BaseColor;->BLACK:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentTextColor:Lcom/itextpdf/text/BaseColor;

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->backgroundMode:I

    .line 78
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->polyFillMode:I

    .line 79
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->lineJoin:I

    .line 91
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->savedStates:Ljava/util/Stack;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->MetaObjects:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Lcom/itextpdf/text/pdf/codec/wmf/Point;

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/text/pdf/codec/wmf/Point;-><init>(II)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPoint:Lcom/itextpdf/text/pdf/codec/wmf/Point;

    .line 94
    new-instance v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    .line 95
    new-instance v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBrush:Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

    .line 96
    new-instance v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentFont:Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/codec/wmf/MetaState;)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/itextpdf/text/BaseColor;->WHITE:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 76
    sget-object v0, Lcom/itextpdf/text/BaseColor;->BLACK:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentTextColor:Lcom/itextpdf/text/BaseColor;

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->backgroundMode:I

    .line 78
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->polyFillMode:I

    .line 79
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->lineJoin:I

    .line 100
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setMetaState(Lcom/itextpdf/text/pdf/codec/wmf/MetaState;)V

    .line 101
    return-void
.end method


# virtual methods
.method public addMetaObject(Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 125
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->MetaObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->MetaObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->MetaObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_1
    return-void

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->MetaObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public cleanup(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 215
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->savedStates:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v0

    .local v0, k:I
    move v1, v0

    .line 216
    .end local v0           #k:I
    .local v1, k:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #k:I
    .restart local v0       #k:I
    if-lez v1, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    move v1, v0

    .end local v0           #k:I
    .restart local v1       #k:I
    goto :goto_0

    .line 218
    .end local v1           #k:I
    .restart local v0       #k:I
    :cond_0
    return-void
.end method

.method public deleteMetaObject(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->MetaObjects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public getBackgroundMode()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->backgroundMode:I

    return v0
.end method

.method public getCurrentBackgroundColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getCurrentBrush()Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBrush:Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

    return-object v0
.end method

.method public getCurrentFont()Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentFont:Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;

    return-object v0
.end method

.method public getCurrentPen()Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    return-object v0
.end method

.method public getCurrentPoint()Lcom/itextpdf/text/pdf/codec/wmf/Point;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPoint:Lcom/itextpdf/text/pdf/codec/wmf/Point;

    return-object v0
.end method

.method public getCurrentTextColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentTextColor:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getLineNeutral()Z
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->lineJoin:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPolyFillMode()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->polyFillMode:I

    return v0
.end method

.method public getTextAlign()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->textAlign:I

    return v0
.end method

.method public restoreState(ILcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 5
    .parameter "index"
    .parameter "cb"

    .prologue
    .line 200
    if-gez p1, :cond_0

    .line 201
    neg-int v3, p1

    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->savedStates:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 204
    .local v0, pops:I
    :goto_0
    if-nez v0, :cond_1

    .line 212
    :goto_1
    return-void

    .line 203
    .end local v0           #pops:I
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->savedStates:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    sub-int/2addr v3, p1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0       #pops:I
    goto :goto_0

    .line 206
    :cond_1
    const/4 v2, 0x0

    .local v2, state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;
    move v1, v0

    .line 207
    .end local v0           #pops:I
    .local v1, pops:I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1           #pops:I
    .restart local v0       #pops:I
    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 209
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->savedStates:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;
    check-cast v2, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    .restart local v2       #state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;
    move v1, v0

    .end local v0           #pops:I
    .restart local v1       #pops:I
    goto :goto_2

    .line 211
    .end local v1           #pops:I
    .restart local v0       #pops:I
    :cond_2
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setMetaState(Lcom/itextpdf/text/pdf/codec/wmf/MetaState;)V

    goto :goto_1
.end method

.method public saveState(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 194
    new-instance v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;-><init>(Lcom/itextpdf/text/pdf/codec/wmf/MetaState;)V

    .line 195
    .local v0, state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->savedStates:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public selectMetaObject(ILcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 6
    .parameter "index"
    .parameter "cb"

    .prologue
    const/4 v5, 0x0

    .line 135
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->MetaObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;

    .line 136
    .local v1, obj:Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;
    if-nez v1, :cond_1

    .line 186
    .end local v1           #obj:Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local v1       #obj:Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    check-cast v1, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    .end local v1           #obj:Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;
    iput-object v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    .line 155
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->getStyle()I

    move-result v2

    .line 156
    .local v2, style:I
    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->getColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v0

    .line 158
    .local v0, color:Lcom/itextpdf/text/BaseColor;
    invoke-virtual {p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 159
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->getPenWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->scalingX:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->extentWx:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 160
    packed-switch v2, :pswitch_data_1

    .line 174
    invoke-virtual {p2, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineDash(F)V

    goto :goto_0

    .line 141
    .end local v0           #color:Lcom/itextpdf/text/BaseColor;
    .end local v2           #style:I
    .restart local v1       #obj:Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;
    :pswitch_1
    check-cast v1, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

    .end local v1           #obj:Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;
    iput-object v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBrush:Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

    .line 142
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBrush:Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->getStyle()I

    move-result v2

    .line 143
    .restart local v2       #style:I
    if-nez v2, :cond_2

    .line 144
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBrush:Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->getColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v0

    .line 145
    .restart local v0       #color:Lcom/itextpdf/text/BaseColor;
    invoke-virtual {p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto :goto_0

    .line 147
    .end local v0           #color:Lcom/itextpdf/text/BaseColor;
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 148
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 149
    .restart local v0       #color:Lcom/itextpdf/text/BaseColor;
    invoke-virtual {p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto :goto_0

    .line 162
    :pswitch_2
    const/high16 v3, 0x4190

    const/high16 v4, 0x40c0

    invoke-virtual {p2, v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineDash(FFF)V

    goto :goto_0

    .line 165
    :pswitch_3
    const-string v3, "[9 6 3 6]0 d\n"

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :pswitch_4
    const-string v3, "[9 3 3 3 3 3]0 d\n"

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :pswitch_5
    const/high16 v3, 0x4040

    invoke-virtual {p2, v3, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineDash(FF)V

    goto :goto_0

    .line 182
    .end local v0           #color:Lcom/itextpdf/text/BaseColor;
    .end local v2           #style:I
    .restart local v1       #obj:Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;
    :pswitch_6
    check-cast v1, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;

    .end local v1           #obj:Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;
    iput-object v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentFont:Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 160
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setBackgroundMode(I)V
    .locals 0
    .parameter "backgroundMode"

    .prologue
    .line 316
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->backgroundMode:I

    .line 317
    return-void
.end method

.method public setCurrentBackgroundColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "currentBackgroundColor"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 289
    return-void
.end method

.method public setCurrentPoint(Lcom/itextpdf/text/pdf/codec/wmf/Point;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPoint:Lcom/itextpdf/text/pdf/codec/wmf/Point;

    .line 259
    return-void
.end method

.method public setCurrentTextColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "currentTextColor"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentTextColor:Lcom/itextpdf/text/BaseColor;

    .line 303
    return-void
.end method

.method public setExtentWx(I)V
    .locals 0
    .parameter "extentWx"

    .prologue
    .line 245
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->extentWx:I

    .line 246
    return-void
.end method

.method public setExtentWy(I)V
    .locals 0
    .parameter "extentWy"

    .prologue
    .line 249
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->extentWy:I

    .line 250
    return-void
.end method

.method public setLineJoinPolygon(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x1

    .line 355
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->lineJoin:I

    if-nez v0, :cond_0

    .line 356
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->lineJoin:I

    .line 357
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineJoin(I)V

    .line 359
    :cond_0
    return-void
.end method

.method public setLineJoinRectangle(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 348
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->lineJoin:I

    if-eqz v0, :cond_0

    .line 349
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->lineJoin:I

    .line 350
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineJoin(I)V

    .line 352
    :cond_0
    return-void
.end method

.method public setMetaState(Lcom/itextpdf/text/pdf/codec/wmf/MetaState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 104
    iget-object v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->savedStates:Ljava/util/Stack;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->savedStates:Ljava/util/Stack;

    .line 105
    iget-object v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->MetaObjects:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->MetaObjects:Ljava/util/ArrayList;

    .line 106
    iget-object v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPoint:Lcom/itextpdf/text/pdf/codec/wmf/Point;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPoint:Lcom/itextpdf/text/pdf/codec/wmf/Point;

    .line 107
    iget-object v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentPen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    .line 108
    iget-object v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBrush:Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBrush:Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

    .line 109
    iget-object v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentFont:Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentFont:Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;

    .line 110
    iget-object v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 111
    iget-object v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentTextColor:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->currentTextColor:Lcom/itextpdf/text/BaseColor;

    .line 112
    iget v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->backgroundMode:I

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->backgroundMode:I

    .line 113
    iget v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->polyFillMode:I

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->polyFillMode:I

    .line 114
    iget v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->textAlign:I

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->textAlign:I

    .line 115
    iget v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->lineJoin:I

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->lineJoin:I

    .line 116
    iget v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->offsetWx:I

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->offsetWx:I

    .line 117
    iget v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->offsetWy:I

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->offsetWy:I

    .line 118
    iget v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->extentWx:I

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->extentWx:I

    .line 119
    iget v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->extentWy:I

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->extentWy:I

    .line 120
    iget v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->scalingX:F

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->scalingX:F

    .line 121
    iget v0, p1, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->scalingY:F

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->scalingY:F

    .line 122
    return-void
.end method

.method public setOffsetWx(I)V
    .locals 0
    .parameter "offsetWx"

    .prologue
    .line 237
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->offsetWx:I

    .line 238
    return-void
.end method

.method public setOffsetWy(I)V
    .locals 0
    .parameter "offsetWy"

    .prologue
    .line 241
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->offsetWy:I

    .line 242
    return-void
.end method

.method public setPolyFillMode(I)V
    .locals 0
    .parameter "polyFillMode"

    .prologue
    .line 344
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->polyFillMode:I

    .line 345
    return-void
.end method

.method public setScalingX(F)V
    .locals 0
    .parameter "scalingX"

    .prologue
    .line 229
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->scalingX:F

    .line 230
    return-void
.end method

.method public setScalingY(F)V
    .locals 0
    .parameter "scalingY"

    .prologue
    .line 233
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->scalingY:F

    .line 234
    return-void
.end method

.method public setTextAlign(I)V
    .locals 0
    .parameter "textAlign"

    .prologue
    .line 330
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->textAlign:I

    .line 331
    return-void
.end method

.method public transformAngle(F)F
    .locals 5
    .parameter "angle"

    .prologue
    const/4 v2, 0x0

    .line 253
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->scalingY:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    neg-float v0, p1

    .line 254
    .local v0, ta:F
    :goto_0
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->scalingX:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const-wide v1, 0x400921fb54442d18L

    float-to-double v3, v0

    sub-double/2addr v1, v3

    :goto_1
    double-to-float v1, v1

    return v1

    .end local v0           #ta:F
    :cond_0
    move v0, p1

    .line 253
    goto :goto_0

    .line 254
    .restart local v0       #ta:F
    :cond_1
    float-to-double v1, v0

    goto :goto_1
.end method

.method public transformX(I)F
    .locals 2
    .parameter "x"

    .prologue
    .line 221
    int-to-float v0, p1

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->offsetWx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->scalingX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->extentWx:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public transformY(I)F
    .locals 3
    .parameter "y"

    .prologue
    .line 225
    const/high16 v0, 0x3f80

    int-to-float v1, p1

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->offsetWy:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->extentWy:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->scalingY:F

    mul-float/2addr v0, v1

    return v0
.end method
