.class public final Lcom/zte/statistics/sdk/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static feedback:I

.field public static zte_about:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/high16 v0, 0x7f03

    sput v0, Lcom/zte/statistics/sdk/R$layout;->feedback:I

    .line 48
    const v0, 0x7f030001

    sput v0, Lcom/zte/statistics/sdk/R$layout;->zte_about:I

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
