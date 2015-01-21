.class Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallCorGView"
.end annotation


# instance fields
.field private firstCallButton:Landroid/widget/ImageView;

.field private firstCallDivider:Landroid/view/View;

.field private firstCallView:Landroid/view/View;

.field private secondCallButton:Landroid/widget/ImageView;

.field private secondCallDivider:Landroid/view/View;

.field private secondCallView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 4476
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4476
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method


# virtual methods
.method public getFirstCallButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 4486
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->firstCallButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getFirstCallDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 4504
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->firstCallDivider:Landroid/view/View;

    return-object v0
.end method

.method public getFirstCallView()Landroid/view/View;
    .locals 1

    .prologue
    .line 4498
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->firstCallView:Landroid/view/View;

    return-object v0
.end method

.method public getSecondCallButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 4492
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->secondCallButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSecondCallDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 4516
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->secondCallDivider:Landroid/view/View;

    return-object v0
.end method

.method public getSecondCallView()Landroid/view/View;
    .locals 1

    .prologue
    .line 4510
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->secondCallView:Landroid/view/View;

    return-object v0
.end method

.method public setFirstCallButton(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "firstCallButton"

    .prologue
    .line 4489
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->firstCallButton:Landroid/widget/ImageView;

    .line 4490
    return-void
.end method

.method public setFirstCallDivider(Landroid/view/View;)V
    .locals 0
    .parameter "firstCallDivider"

    .prologue
    .line 4507
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->firstCallDivider:Landroid/view/View;

    .line 4508
    return-void
.end method

.method public setFirstCallView(Landroid/view/View;)V
    .locals 0
    .parameter "firstCallView"

    .prologue
    .line 4501
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->firstCallView:Landroid/view/View;

    .line 4502
    return-void
.end method

.method public setSecondCallButton(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "secondCallButton"

    .prologue
    .line 4495
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->secondCallButton:Landroid/widget/ImageView;

    .line 4496
    return-void
.end method

.method public setSecondCallDivider(Landroid/view/View;)V
    .locals 0
    .parameter "secondCallDivider"

    .prologue
    .line 4519
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->secondCallDivider:Landroid/view/View;

    .line 4520
    return-void
.end method

.method public setSecondCallView(Landroid/view/View;)V
    .locals 0
    .parameter "secondCallView"

    .prologue
    .line 4513
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->secondCallView:Landroid/view/View;

    .line 4514
    return-void
.end method
