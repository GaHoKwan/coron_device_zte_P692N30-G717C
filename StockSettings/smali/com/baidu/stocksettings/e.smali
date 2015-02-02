.class Lcom/baidu/stocksettings/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/baidu/stocksettings/c;


# direct methods
.method constructor <init>(Lcom/baidu/stocksettings/c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/stocksettings/e;->a:Lcom/baidu/stocksettings/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    const-string v0, "busybox mount -o remount,rw /system"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    const-string v0, "busybox cp /system/etc/vold.fstab.bak /system/etc/vold.fstab"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    const-string v0, "busybox chmod 644 /system/etc/vold.fstab"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/stocksettings/e;->a:Lcom/baidu/stocksettings/c;

    invoke-virtual {v0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sdpath"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/baidu/stocksettings/e;->a:Lcom/baidu/stocksettings/c;

    invoke-static {v0}, Lcom/baidu/stocksettings/c;->b(Lcom/baidu/stocksettings/c;)Landroid/preference/ListPreference;

    move-result-object v0

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/baidu/stocksettings/e;->a:Lcom/baidu/stocksettings/c;

    invoke-virtual {v0}, Lcom/baidu/stocksettings/c;->a()V

    goto :goto_0

    :pswitch_1
    const-string v0, "busybox mount -o remount,rw /system"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    const-string v0, "busybox cp /system/etc/vold.fstab /system/etc/vold.fstab.bak"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    const-string v0, "busybox cp /system/etc/vold.fstab.ex /system/etc/vold.fstab"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    const-string v0, "busybox chmod 644 /system/etc/vold.fstab"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/stocksettings/e;->a:Lcom/baidu/stocksettings/c;

    invoke-virtual {v0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sdpath"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/baidu/stocksettings/e;->a:Lcom/baidu/stocksettings/c;

    invoke-static {v0}, Lcom/baidu/stocksettings/c;->b(Lcom/baidu/stocksettings/c;)Landroid/preference/ListPreference;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/baidu/stocksettings/e;->a:Lcom/baidu/stocksettings/c;

    invoke-virtual {v0}, Lcom/baidu/stocksettings/c;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
