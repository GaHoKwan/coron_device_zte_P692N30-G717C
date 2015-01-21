.class public Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;
.super Landroid/content/ContextWrapper;
.source "IpMessagePluginImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;


# instance fields
.field protected mActivityManager:Lcom/mediatek/mms/ipmessage/ActivitiesManager;

.field protected mChatManager:Lcom/mediatek/mms/ipmessage/ChatManager;

.field protected mContactManager:Lcom/mediatek/mms/ipmessage/ContactManager;

.field protected mGroupManager:Lcom/mediatek/mms/ipmessage/GroupManager;

.field protected mMessageManager:Lcom/mediatek/mms/ipmessage/MessageManager;

.field protected mNotificationsManager:Lcom/mediatek/mms/ipmessage/NotificationsManager;

.field protected mResourceManager:Lcom/mediatek/mms/ipmessage/ResourceManager;

.field protected mServiceManager:Lcom/mediatek/mms/ipmessage/ServiceManager;

.field protected mSettingsManager:Lcom/mediatek/mms/ipmessage/SettingsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mActivityManager:Lcom/mediatek/mms/ipmessage/ActivitiesManager;

    .line 45
    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mChatManager:Lcom/mediatek/mms/ipmessage/ChatManager;

    .line 46
    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mContactManager:Lcom/mediatek/mms/ipmessage/ContactManager;

    .line 47
    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mGroupManager:Lcom/mediatek/mms/ipmessage/GroupManager;

    .line 48
    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mMessageManager:Lcom/mediatek/mms/ipmessage/MessageManager;

    .line 49
    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mNotificationsManager:Lcom/mediatek/mms/ipmessage/NotificationsManager;

    .line 50
    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mServiceManager:Lcom/mediatek/mms/ipmessage/ServiceManager;

    .line 51
    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mSettingsManager:Lcom/mediatek/mms/ipmessage/SettingsManager;

    .line 52
    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mResourceManager:Lcom/mediatek/mms/ipmessage/ResourceManager;

    .line 56
    return-void
.end method


# virtual methods
.method public getActivitiesManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ActivitiesManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mActivityManager:Lcom/mediatek/mms/ipmessage/ActivitiesManager;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/mediatek/mms/ipmessage/ActivitiesManager;

    invoke-direct {v0, p1}, Lcom/mediatek/mms/ipmessage/ActivitiesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mActivityManager:Lcom/mediatek/mms/ipmessage/ActivitiesManager;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mActivityManager:Lcom/mediatek/mms/ipmessage/ActivitiesManager;

    return-object v0
.end method

.method public getChatManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ChatManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mChatManager:Lcom/mediatek/mms/ipmessage/ChatManager;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/mediatek/mms/ipmessage/ChatManager;

    invoke-direct {v0, p1}, Lcom/mediatek/mms/ipmessage/ChatManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mChatManager:Lcom/mediatek/mms/ipmessage/ChatManager;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mChatManager:Lcom/mediatek/mms/ipmessage/ChatManager;

    return-object v0
.end method

.method public getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mContactManager:Lcom/mediatek/mms/ipmessage/ContactManager;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/mediatek/mms/ipmessage/ContactManager;

    invoke-direct {v0, p1}, Lcom/mediatek/mms/ipmessage/ContactManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mContactManager:Lcom/mediatek/mms/ipmessage/ContactManager;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mContactManager:Lcom/mediatek/mms/ipmessage/ContactManager;

    return-object v0
.end method

.method public getGroupManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/GroupManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mGroupManager:Lcom/mediatek/mms/ipmessage/GroupManager;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/mediatek/mms/ipmessage/GroupManager;

    invoke-direct {v0, p1}, Lcom/mediatek/mms/ipmessage/GroupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mGroupManager:Lcom/mediatek/mms/ipmessage/GroupManager;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mGroupManager:Lcom/mediatek/mms/ipmessage/GroupManager;

    return-object v0
.end method

.method public getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mMessageManager:Lcom/mediatek/mms/ipmessage/MessageManager;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/mediatek/mms/ipmessage/MessageManager;

    invoke-direct {v0, p1}, Lcom/mediatek/mms/ipmessage/MessageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mMessageManager:Lcom/mediatek/mms/ipmessage/MessageManager;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mMessageManager:Lcom/mediatek/mms/ipmessage/MessageManager;

    return-object v0
.end method

.method public getNotificationsManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/NotificationsManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mNotificationsManager:Lcom/mediatek/mms/ipmessage/NotificationsManager;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/mediatek/mms/ipmessage/NotificationsManager;

    invoke-direct {v0, p1}, Lcom/mediatek/mms/ipmessage/NotificationsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mNotificationsManager:Lcom/mediatek/mms/ipmessage/NotificationsManager;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mNotificationsManager:Lcom/mediatek/mms/ipmessage/NotificationsManager;

    return-object v0
.end method

.method public getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mResourceManager:Lcom/mediatek/mms/ipmessage/ResourceManager;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/mediatek/mms/ipmessage/ResourceManager;

    invoke-direct {v0, p1}, Lcom/mediatek/mms/ipmessage/ResourceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mResourceManager:Lcom/mediatek/mms/ipmessage/ResourceManager;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mResourceManager:Lcom/mediatek/mms/ipmessage/ResourceManager;

    return-object v0
.end method

.method public getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mServiceManager:Lcom/mediatek/mms/ipmessage/ServiceManager;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/mediatek/mms/ipmessage/ServiceManager;

    invoke-direct {v0, p1}, Lcom/mediatek/mms/ipmessage/ServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mServiceManager:Lcom/mediatek/mms/ipmessage/ServiceManager;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mServiceManager:Lcom/mediatek/mms/ipmessage/ServiceManager;

    return-object v0
.end method

.method public getSettingsManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/SettingsManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mSettingsManager:Lcom/mediatek/mms/ipmessage/SettingsManager;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/mediatek/mms/ipmessage/SettingsManager;

    invoke-direct {v0, p1}, Lcom/mediatek/mms/ipmessage/SettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mSettingsManager:Lcom/mediatek/mms/ipmessage/SettingsManager;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;->mSettingsManager:Lcom/mediatek/mms/ipmessage/SettingsManager;

    return-object v0
.end method

.method public isActualPlugin()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method
