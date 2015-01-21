.class public Lcom/itextpdf/text/PageSize;
.super Ljava/lang/Object;
.source "PageSize.java"


# static fields
.field public static final A0:Lcom/itextpdf/text/Rectangle;

.field public static final A1:Lcom/itextpdf/text/Rectangle;

.field public static final A10:Lcom/itextpdf/text/Rectangle;

.field public static final A2:Lcom/itextpdf/text/Rectangle;

.field public static final A3:Lcom/itextpdf/text/Rectangle;

.field public static final A4:Lcom/itextpdf/text/Rectangle;

.field public static final A4_LANDSCAPE:Lcom/itextpdf/text/Rectangle;

.field public static final A5:Lcom/itextpdf/text/Rectangle;

.field public static final A6:Lcom/itextpdf/text/Rectangle;

.field public static final A7:Lcom/itextpdf/text/Rectangle;

.field public static final A8:Lcom/itextpdf/text/Rectangle;

.field public static final A9:Lcom/itextpdf/text/Rectangle;

.field public static final ARCH_A:Lcom/itextpdf/text/Rectangle;

.field public static final ARCH_B:Lcom/itextpdf/text/Rectangle;

.field public static final ARCH_C:Lcom/itextpdf/text/Rectangle;

.field public static final ARCH_D:Lcom/itextpdf/text/Rectangle;

.field public static final ARCH_E:Lcom/itextpdf/text/Rectangle;

.field public static final B0:Lcom/itextpdf/text/Rectangle;

.field public static final B1:Lcom/itextpdf/text/Rectangle;

.field public static final B10:Lcom/itextpdf/text/Rectangle;

.field public static final B2:Lcom/itextpdf/text/Rectangle;

.field public static final B3:Lcom/itextpdf/text/Rectangle;

.field public static final B4:Lcom/itextpdf/text/Rectangle;

.field public static final B5:Lcom/itextpdf/text/Rectangle;

.field public static final B6:Lcom/itextpdf/text/Rectangle;

.field public static final B7:Lcom/itextpdf/text/Rectangle;

.field public static final B8:Lcom/itextpdf/text/Rectangle;

.field public static final B9:Lcom/itextpdf/text/Rectangle;

.field public static final CROWN_OCTAVO:Lcom/itextpdf/text/Rectangle;

.field public static final CROWN_QUARTO:Lcom/itextpdf/text/Rectangle;

.field public static final DEMY_OCTAVO:Lcom/itextpdf/text/Rectangle;

.field public static final DEMY_QUARTO:Lcom/itextpdf/text/Rectangle;

.field public static final EXECUTIVE:Lcom/itextpdf/text/Rectangle;

.field public static final FLSA:Lcom/itextpdf/text/Rectangle;

.field public static final FLSE:Lcom/itextpdf/text/Rectangle;

.field public static final HALFLETTER:Lcom/itextpdf/text/Rectangle;

.field public static final ID_1:Lcom/itextpdf/text/Rectangle;

.field public static final ID_2:Lcom/itextpdf/text/Rectangle;

.field public static final ID_3:Lcom/itextpdf/text/Rectangle;

.field public static final LARGE_CROWN_OCTAVO:Lcom/itextpdf/text/Rectangle;

.field public static final LARGE_CROWN_QUARTO:Lcom/itextpdf/text/Rectangle;

.field public static final LEDGER:Lcom/itextpdf/text/Rectangle;

.field public static final LEGAL:Lcom/itextpdf/text/Rectangle;

.field public static final LEGAL_LANDSCAPE:Lcom/itextpdf/text/Rectangle;

.field public static final LETTER:Lcom/itextpdf/text/Rectangle;

.field public static final LETTER_LANDSCAPE:Lcom/itextpdf/text/Rectangle;

.field public static final NOTE:Lcom/itextpdf/text/Rectangle;

.field public static final PENGUIN_LARGE_PAPERBACK:Lcom/itextpdf/text/Rectangle;

.field public static final PENGUIN_SMALL_PAPERBACK:Lcom/itextpdf/text/Rectangle;

.field public static final POSTCARD:Lcom/itextpdf/text/Rectangle;

.field public static final ROYAL_OCTAVO:Lcom/itextpdf/text/Rectangle;

.field public static final ROYAL_QUARTO:Lcom/itextpdf/text/Rectangle;

.field public static final SMALL_PAPERBACK:Lcom/itextpdf/text/Rectangle;

.field public static final TABLOID:Lcom/itextpdf/text/Rectangle;

.field public static final _11X17:Lcom/itextpdf/text/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x43948000

    const/high16 v6, 0x4379

    const/high16 v5, 0x4352

    const/high16 v4, 0x4446

    const/high16 v3, 0x4419

    .line 60
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->LETTER:Lcom/itextpdf/text/Rectangle;

    .line 63
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x4407

    const/high16 v2, 0x4434

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->NOTE:Lcom/itextpdf/text/Rectangle;

    .line 66
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x447c

    invoke-direct {v0, v3, v1}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->LEGAL:Lcom/itextpdf/text/Rectangle;

    .line 69
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x4499

    invoke-direct {v0, v4, v1}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->TABLOID:Lcom/itextpdf/text/Rectangle;

    .line 72
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x44028000

    const/high16 v2, 0x443d

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->EXECUTIVE:Lcom/itextpdf/text/Rectangle;

    .line 75
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x438d8000

    const/high16 v2, 0x43d0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->POSTCARD:Lcom/itextpdf/text/Rectangle;

    .line 78
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x4515

    const v2, 0x4552a000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->A0:Lcom/itextpdf/text/Rectangle;

    .line 81
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x44d28000

    const/high16 v2, 0x4515

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->A1:Lcom/itextpdf/text/Rectangle;

    .line 84
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x4494e000

    const v2, 0x44d28000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->A2:Lcom/itextpdf/text/Rectangle;

    .line 87
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x44528000

    const v2, 0x4494e000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->A3:Lcom/itextpdf/text/Rectangle;

    .line 90
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x4414c000

    const v2, 0x44528000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->A4:Lcom/itextpdf/text/Rectangle;

    .line 93
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x43d2

    const v2, 0x4414c000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->A5:Lcom/itextpdf/text/Rectangle;

    .line 96
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x43d2

    invoke-direct {v0, v7, v1}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->A6:Lcom/itextpdf/text/Rectangle;

    .line 99
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    invoke-direct {v0, v5, v7}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->A7:Lcom/itextpdf/text/Rectangle;

    .line 102
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x4314

    invoke-direct {v0, v1, v5}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->A8:Lcom/itextpdf/text/Rectangle;

    .line 105
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x42d2

    const/high16 v2, 0x4314

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->A9:Lcom/itextpdf/text/Rectangle;

    .line 108
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x4292

    const/high16 v2, 0x42d2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->A10:Lcom/itextpdf/text/Rectangle;

    .line 111
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x45312000

    const v2, 0x457a8000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->B0:Lcom/itextpdf/text/Rectangle;

    .line 114
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x44fa8000

    const v2, 0x45312000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->B1:Lcom/itextpdf/text/Rectangle;

    .line 117
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x44b12000

    const v2, 0x44fa8000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->B2:Lcom/itextpdf/text/Rectangle;

    .line 120
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x447a

    const v2, 0x44b12000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->B3:Lcom/itextpdf/text/Rectangle;

    .line 123
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x4431

    const/high16 v2, 0x447a

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->B4:Lcom/itextpdf/text/Rectangle;

    .line 126
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x43f9

    const/high16 v2, 0x4431

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->B5:Lcom/itextpdf/text/Rectangle;

    .line 129
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x43b1

    const/high16 v2, 0x43f9

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->B6:Lcom/itextpdf/text/Rectangle;

    .line 132
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x43b1

    invoke-direct {v0, v6, v1}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->B7:Lcom/itextpdf/text/Rectangle;

    .line 135
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x432f

    invoke-direct {v0, v1, v6}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->B8:Lcom/itextpdf/text/Rectangle;

    .line 138
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x42f8

    const/high16 v2, 0x432f

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->B9:Lcom/itextpdf/text/Rectangle;

    .line 141
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x42ae

    const/high16 v2, 0x42f8

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->B10:Lcom/itextpdf/text/Rectangle;

    .line 144
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x4522

    const/high16 v2, 0x4558

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->ARCH_E:Lcom/itextpdf/text/Rectangle;

    .line 147
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x44d8

    const/high16 v2, 0x4522

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->ARCH_D:Lcom/itextpdf/text/Rectangle;

    .line 150
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x44a2

    const/high16 v2, 0x44d8

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->ARCH_C:Lcom/itextpdf/text/Rectangle;

    .line 153
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x4458

    const/high16 v2, 0x44a2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->ARCH_B:Lcom/itextpdf/text/Rectangle;

    .line 156
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x4422

    const/high16 v2, 0x4458

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->ARCH_A:Lcom/itextpdf/text/Rectangle;

    .line 159
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x446a

    invoke-direct {v0, v3, v1}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->FLSA:Lcom/itextpdf/text/Rectangle;

    .line 162
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x4422

    const/high16 v2, 0x446a

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->FLSE:Lcom/itextpdf/text/Rectangle;

    .line 165
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x43c6

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->HALFLETTER:Lcom/itextpdf/text/Rectangle;

    .line 168
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x4499

    invoke-direct {v0, v4, v1}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->_11X17:Lcom/itextpdf/text/Rectangle;

    .line 171
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x4372a666

    const/high16 v2, 0x4319

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->ID_1:Lcom/itextpdf/text/Rectangle;

    .line 174
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    invoke-direct {v0, v7, v5}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->ID_2:Lcom/itextpdf/text/Rectangle;

    .line 177
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x43b1

    invoke-direct {v0, v1, v6}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->ID_3:Lcom/itextpdf/text/Rectangle;

    .line 180
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x4499

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->LEDGER:Lcom/itextpdf/text/Rectangle;

    .line 183
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x4405c000

    const v2, 0x442e4000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->CROWN_QUARTO:Lcom/itextpdf/text/Rectangle;

    .line 186
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x440e4000

    const v2, 0x4436c000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->LARGE_CROWN_QUARTO:Lcom/itextpdf/text/Rectangle;

    .line 189
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x441b

    const v2, 0x44438000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->DEMY_QUARTO:Lcom/itextpdf/text/Rectangle;

    .line 192
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x4427c000

    const/high16 v2, 0x445d

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->ROYAL_QUARTO:Lcom/itextpdf/text/Rectangle;

    .line 195
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x43ae

    const v2, 0x4403c000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->CROWN_OCTAVO:Lcom/itextpdf/text/Rectangle;

    .line 198
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x43b68000

    const v2, 0x440c4000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->LARGE_CROWN_OCTAVO:Lcom/itextpdf/text/Rectangle;

    .line 201
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x43c38000

    invoke-direct {v0, v1, v3}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->DEMY_OCTAVO:Lcom/itextpdf/text/Rectangle;

    .line 204
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x43dd

    const v2, 0x4425c000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->ROYAL_OCTAVO:Lcom/itextpdf/text/Rectangle;

    .line 207
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x439d

    const/high16 v2, 0x43fc

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->SMALL_PAPERBACK:Lcom/itextpdf/text/Rectangle;

    .line 210
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x439d

    const v2, 0x44004000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->PENGUIN_SMALL_PAPERBACK:Lcom/itextpdf/text/Rectangle;

    .line 213
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x43b68000

    const v2, 0x440c4000

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FF)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->PENGUIN_LARGE_PAPERBACK:Lcom/itextpdf/text/Rectangle;

    .line 221
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/16 v1, 0x5a

    invoke-direct {v0, v3, v4, v1}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FFI)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->LETTER_LANDSCAPE:Lcom/itextpdf/text/Rectangle;

    .line 227
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const/high16 v1, 0x447c

    const/16 v2, 0x5a

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FFI)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->LEGAL_LANDSCAPE:Lcom/itextpdf/text/Rectangle;

    .line 233
    new-instance v0, Lcom/itextpdf/text/RectangleReadOnly;

    const v1, 0x4414c000

    const v2, 0x44528000

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/RectangleReadOnly;-><init>(FFI)V

    sput-object v0, Lcom/itextpdf/text/PageSize;->A4_LANDSCAPE:Lcom/itextpdf/text/Rectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRectangle(Ljava/lang/String;)Lcom/itextpdf/text/Rectangle;
    .locals 10
    .parameter "name"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 246
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 247
    .local v3, pos:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 249
    :try_start_0
    const-class v5, Lcom/itextpdf/text/PageSize;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 250
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/Rectangle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-object v5

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "can.t.find.page.size.1"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p0, v7, v8

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 257
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, width:Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, height:Ljava/lang/String;
    new-instance v5, Lcom/itextpdf/text/Rectangle;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 260
    .end local v2           #height:Ljava/lang/String;
    .end local v4           #width:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 261
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "1.is.not.a.valid.page.size.format.2"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
