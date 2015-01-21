.class public interface abstract Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getDescription(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getTitle(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract load(Landroid/content/Context;Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract setLogFlag(Z)V
.end method

.method public abstract unload()Ljava/lang/String;
.end method
