.class public Lcn/com/zte/yp/activityZD/SingleListElement;
.super Ljava/lang/Object;
.source "SingleListElement.java"

# interfaces
.implements Lcn/com/zte/yp/activityZD/ListElementInterface;


# instance fields
.field private text:Ljava/lang/String;

.field private type:Lcn/com/zte/yp/utils/CommDefine$SettingsType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementType()Lcn/com/zte/yp/utils/CommDefine$SettingsType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/SingleListElement;->type:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f03000e

    return v0
.end method

.method public getViewForListElement(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "layoutInflater"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/SingleListElement;->getLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 42
    .local v0, layout:Landroid/widget/LinearLayout;
    const v2, 0x7f0a0028

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/SingleListElement;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public setElementType(Lcn/com/zte/yp/utils/CommDefine$SettingsType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 54
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/SingleListElement;->type:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    .line 55
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 26
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/SingleListElement;->text:Ljava/lang/String;

    .line 27
    return-void
.end method
