.class public interface abstract Lcom/mediatek/email/ext/IServerProviderPlugin;
.super Ljava/lang/Object;
.source "IServerProviderPlugin.java"


# virtual methods
.method public abstract getAccountNameDescription()Ljava/lang/String;
.end method

.method public abstract getAccountSignature()Ljava/lang/String;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDefaultProviderDomain()Ljava/lang/String;
.end method

.method public abstract getDisplayESPNum()I
.end method

.method public abstract getProviderDomains()[Ljava/lang/String;
.end method

.method public abstract getProviderIcons()[I
.end method

.method public abstract getProviderNames()[Ljava/lang/String;
.end method

.method public abstract getProviderXml()I
.end method

.method public abstract isSupportProviderList()Z
.end method
