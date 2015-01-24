.class Lcn/edu/ncwu/www/MPreferenceActivity$3;
.super Ljava/lang/Object;
.source "MPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/ncwu/www/MPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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
    iput-object p1, p0, Lcn/edu/ncwu/www/MPreferenceActivity$3;->this$0:Lcn/edu/ncwu/www/MPreferenceActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 150
    return-void
.end method
