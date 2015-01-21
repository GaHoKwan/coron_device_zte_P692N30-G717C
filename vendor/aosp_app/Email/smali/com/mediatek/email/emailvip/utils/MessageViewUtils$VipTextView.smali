.class public Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;
.super Landroid/widget/TextView;
.source "MessageViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/utils/MessageViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VipTextView"
.end annotation


# instance fields
.field public mAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 442
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 450
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 451
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V
    .locals 1
    .parameter "context"
    .parameter "tempAddress"

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 446
    iput-object p2, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;->mAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    .line 447
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;->mAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    return-object v0
.end method

.method public setAdress(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V
    .locals 0
    .parameter "tempAddress"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipTextView;->mAddress:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    .line 459
    return-void
.end method

.method public setPadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 454
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 455
    return-void
.end method
