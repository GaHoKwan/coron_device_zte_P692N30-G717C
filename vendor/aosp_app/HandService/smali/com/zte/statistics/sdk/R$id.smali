.class public final Lcom/zte/statistics/sdk/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static layout_email:I

.field public static layout_feedback:I

.field public static spare_number:I

.field public static zte_button_about_okay:I

.field public static zte_button_cancel:I

.field public static zte_button_send:I

.field public static zte_feedback_text:I

.field public static zte_feedback_user_email:I

.field public static zte_loggo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f050005

    sput v0, Lcom/zte/statistics/sdk/R$id;->layout_email:I

    .line 37
    const v0, 0x7f050002

    sput v0, Lcom/zte/statistics/sdk/R$id;->layout_feedback:I

    .line 38
    const v0, 0x7f050004

    sput v0, Lcom/zte/statistics/sdk/R$id;->spare_number:I

    .line 39
    const v0, 0x7f050008

    sput v0, Lcom/zte/statistics/sdk/R$id;->zte_button_about_okay:I

    .line 40
    const/high16 v0, 0x7f05

    sput v0, Lcom/zte/statistics/sdk/R$id;->zte_button_cancel:I

    .line 41
    const v0, 0x7f050001

    sput v0, Lcom/zte/statistics/sdk/R$id;->zte_button_send:I

    .line 42
    const v0, 0x7f050003

    sput v0, Lcom/zte/statistics/sdk/R$id;->zte_feedback_text:I

    .line 43
    const v0, 0x7f050006

    sput v0, Lcom/zte/statistics/sdk/R$id;->zte_feedback_user_email:I

    .line 44
    const v0, 0x7f050007

    sput v0, Lcom/zte/statistics/sdk/R$id;->zte_loggo:I

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
