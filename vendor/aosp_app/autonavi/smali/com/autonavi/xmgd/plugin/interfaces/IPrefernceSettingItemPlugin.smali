.class public interface abstract Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;


# virtual methods
.method public abstract getDialogType()I
.end method

.method public abstract getIndex()I
.end method

.method public abstract getItemIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getItemValuesArray(Ljava/util/Locale;)[Ljava/lang/String;
.end method

.method public abstract getItemValuesCount()I
.end method

.method public abstract getSecondTitle(ZILjava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getSettingNum()I
.end method

.method public abstract getSettingTitle(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract reset()I
.end method

.method public abstract setIndex(I)V
.end method

.method public abstract setSettingNum(I)V
.end method
