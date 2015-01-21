.class public Lcn/com/zte/yp/activityZD/TwoLineElement;
.super Ljava/lang/Object;
.source "TwoLineElement.java"

# interfaces
.implements Lcn/com/zte/yp/activityZD/ListElementInterface;


# instance fields
.field private info:Ljava/lang/String;

.field private title:Ljava/lang/String;

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
    .line 71
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/TwoLineElement;->type:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f030011

    return v0
.end method

.method public getViewForListElement(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "layoutInflater"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/TwoLineElement;->getLayoutId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 40
    .local v0, layout:Landroid/widget/LinearLayout;
    const v3, 0x7f0a000c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 41
    .local v1, textView:Landroid/widget/TextView;
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/TwoLineElement;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v3, 0x7f0a002c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    .local v2, textView_info:Landroid/widget/TextView;
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/TwoLineElement;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public setElementType(Lcn/com/zte/yp/utils/CommDefine$SettingsType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 61
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/TwoLineElement;->type:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    .line 62
    return-void
.end method

.method public setTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "info"

    .prologue
    .line 28
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/TwoLineElement;->title:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcn/com/zte/yp/activityZD/TwoLineElement;->info:Ljava/lang/String;

    .line 30
    return-void
.end method
