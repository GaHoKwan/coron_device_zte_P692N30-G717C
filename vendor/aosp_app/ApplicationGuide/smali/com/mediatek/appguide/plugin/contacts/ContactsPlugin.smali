.class public Lcom/mediatek/appguide/plugin/contacts/ContactsPlugin;
.super Lcom/android/contacts/ext/ContactPluginDefault;
.source "ContactsPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/contacts/ext/ContactPluginDefault;-><init>()V

    return-void
.end method


# virtual methods
.method public createContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/mediatek/appguide/plugin/contacts/SwitchSimContactsExt;

    invoke-direct {v0}, Lcom/mediatek/appguide/plugin/contacts/SwitchSimContactsExt;-><init>()V

    return-object v0
.end method
