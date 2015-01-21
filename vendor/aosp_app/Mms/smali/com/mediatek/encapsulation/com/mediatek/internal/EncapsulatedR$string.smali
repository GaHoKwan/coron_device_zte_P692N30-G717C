.class public Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;
.super Ljava/lang/Object;
.source "EncapsulatedR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "string"
.end annotation


# static fields
.field public static final STRING_DEFAULTVALUE:I = 0x104000a

.field public static final ime_action_done:I

.field public static final ime_action_next:I

.field public static final new_sim:I

.field public static final sim_close:I

.field public static final url_dialog_choice_message:I

.field public static final url_dialog_choice_title:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const v0, 0x20500f6

    sput v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->url_dialog_choice_message:I

    .line 140
    const v0, 0x20500f5

    sput v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->url_dialog_choice_title:I

    .line 141
    const v0, 0x2050093

    sput v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->new_sim:I

    .line 142
    const v0, 0x1040475

    sput v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->ime_action_done:I

    .line 143
    const v0, 0x1040474

    sput v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->ime_action_next:I

    .line 144
    const v0, 0x2050038

    sput v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->sim_close:I

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
