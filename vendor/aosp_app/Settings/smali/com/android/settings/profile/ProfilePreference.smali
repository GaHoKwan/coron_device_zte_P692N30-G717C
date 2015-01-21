.class public Lcom/android/settings/profile/ProfilePreference;
.super Landroid/preference/Preference;
.source "ProfilePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ProfilePreference"

.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/android/settings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 67
    sput-object v0, Lcom/android/settings/profile/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/profile/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/profile/ProfilePreference;->mSelectable:Z

    .line 63
    invoke-direct {p0}, Lcom/android/settings/profile/ProfilePreference;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/profile/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/profile/ProfilePreference;->mSelectable:Z

    .line 55
    invoke-direct {p0}, Lcom/android/settings/profile/ProfilePreference;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/profile/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/profile/ProfilePreference;->mSelectable:Z

    .line 46
    invoke-direct {p0}, Lcom/android/settings/profile/ProfilePreference;->init()V

    .line 47
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 105
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 75
    .local v3, view:Landroid/view/View;
    const v5, 0x1010004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 76
    .local v4, widget:Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 77
    check-cast v1, Landroid/widget/RadioButton;

    .line 78
    .local v1, rb:Landroid/widget/RadioButton;
    iget-boolean v5, p0, Lcom/android/settings/profile/ProfilePreference;->mSelectable:Z

    if-eqz v5, :cond_3

    .line 79
    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 83
    sput-object v1, Lcom/android/settings/profile/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 84
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 87
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/profile/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 88
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 89
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/profile/ProfilePreference;->mProtectFromCheckedChange:Z

    .line 95
    .end local v0           #isChecked:Z
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const/high16 v5, 0x101

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 96
    .local v2, textLayout:Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    .line 97
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_2
    return-object v3

    .line 91
    .end local v2           #textLayout:Landroid/view/View;
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 116
    const-string v0, "ProfilePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-boolean v0, p0, Lcom/android/settings/profile/ProfilePreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 121
    :cond_0
    if-eqz p2, :cond_2

    .line 122
    sget-object v0, Lcom/android/settings/profile/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Lcom/android/settings/profile/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 125
    :cond_1
    sput-object p1, Lcom/android/settings/profile/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 126
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/android/settings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_2
    sput-object v3, Lcom/android/settings/profile/ProfilePreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 130
    sput-object v3, Lcom/android/settings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 136
    return-void
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/profile/ProfilePreference;->mSelectedKey:Ljava/lang/String;

    .line 113
    return-void
.end method
