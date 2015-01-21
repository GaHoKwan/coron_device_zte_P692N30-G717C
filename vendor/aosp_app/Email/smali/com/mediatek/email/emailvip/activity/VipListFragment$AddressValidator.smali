.class Lcom/mediatek/email/emailvip/activity/VipListFragment$AddressValidator;
.super Ljava/lang/Object;
.source "VipListFragment.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/activity/VipListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;


# direct methods
.method private constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$AddressValidator;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;Lcom/mediatek/email/emailvip/activity/VipListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/mediatek/email/emailvip/activity/VipListFragment$AddressValidator;-><init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;)V

    return-void
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "invalidText"

    .prologue
    .line 199
    const-string v0, ""

    return-object v0
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
