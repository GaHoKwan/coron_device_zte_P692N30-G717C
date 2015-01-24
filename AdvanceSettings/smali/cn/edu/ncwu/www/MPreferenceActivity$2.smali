.class Lcn/edu/ncwu/www/MPreferenceActivity$2;
.super Ljava/lang/Object;
.source "MPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/ncwu/www/MPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/edu/ncwu/www/MPreferenceActivity;


# direct methods
.method constructor <init>(Lcn/edu/ncwu/www/MPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/edu/ncwu/www/MPreferenceActivity$2;->this$0:Lcn/edu/ncwu/www/MPreferenceActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 90
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    iget-object v0, p0, Lcn/edu/ncwu/www/MPreferenceActivity$2;->this$0:Lcn/edu/ncwu/www/MPreferenceActivity;

    #getter for: Lcn/edu/ncwu/www/MPreferenceActivity;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcn/edu/ncwu/www/MPreferenceActivity;->access$0(Lcn/edu/ncwu/www/MPreferenceActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return v3

    :cond_0
    goto :goto_0
.end method
