.class public Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DialerSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public call:Landroid/widget/ImageButton;

.field public callId:I

.field public contactUri:Landroid/net/Uri;

.field public date:Landroid/widget/TextView;

.field public divider:Landroid/view/View;

.field public labelAndNumber:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public operator:Landroid/widget/TextView;

.field public photo:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

.field final synthetic this$0:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

.field public type:Landroid/widget/ImageView;

.field public viewType:I


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->this$0:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
