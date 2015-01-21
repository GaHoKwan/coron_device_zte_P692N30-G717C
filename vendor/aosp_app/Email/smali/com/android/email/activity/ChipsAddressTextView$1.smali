.class Lcom/android/email/activity/ChipsAddressTextView$1;
.super Ljava/lang/Object;
.source "ChipsAddressTextView.java"

# interfaces
.implements Landroid/widget/Filter$Delayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ChipsAddressTextView;->setGalSearchDelayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousLength:I

.field final synthetic this$0:Lcom/android/email/activity/ChipsAddressTextView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ChipsAddressTextView;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/email/activity/ChipsAddressTextView$1;->this$0:Lcom/android/email/activity/ChipsAddressTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/ChipsAddressTextView$1;->mPreviousLength:I

    return-void
.end method


# virtual methods
.method public getPostingDelay(Ljava/lang/CharSequence;)J
    .locals 4
    .parameter "constraint"

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    const-wide/16 v0, 0x0

    .line 85
    :goto_0
    return-wide v0

    .line 82
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/android/email/activity/ChipsAddressTextView$1;->mPreviousLength:I

    if-ge v2, v3, :cond_1

    const-wide/16 v0, 0x1f4

    .line 84
    .local v0, delay:J
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/ChipsAddressTextView$1;->mPreviousLength:I

    goto :goto_0

    .line 82
    .end local v0           #delay:J
    :cond_1
    const-wide/16 v0, 0x12c

    goto :goto_1
.end method
