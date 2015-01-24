.class Lcn/edu/ncwu/www/MPreferenceActivity$4;
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
    iput-object p1, p0, Lcn/edu/ncwu/www/MPreferenceActivity$4;->this$0:Lcn/edu/ncwu/www/MPreferenceActivity;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 157
    iget-object v0, p0, Lcn/edu/ncwu/www/MPreferenceActivity$4;->this$0:Lcn/edu/ncwu/www/MPreferenceActivity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcn/edu/ncwu/www/MPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 159
    return-void
.end method
