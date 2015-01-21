.class public Lcom/sohu/inputmethod/settings/UserExperienceImprovementActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    const-string v0, "UserExperienceImprovementActivity"

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/UserExperienceImprovementActivity;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f03006c

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/UserExperienceImprovementActivity;->setContentView(I)V

    .line 20
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 31
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 25
    return-void
.end method
