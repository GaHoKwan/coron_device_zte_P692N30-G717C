.class public abstract Lcom/mediatek/apst/target/data/proxy/ProxyManager;
.super Ljava/lang/Object;
.source "ProxyManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getApplicationProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 123
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/app/ApplicationProxy;

    move-result-object v0

    return-object v0
.end method

.method public static final getBookmarkProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 147
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/bookmark/BookmarkProxy;

    move-result-object v0

    return-object v0
.end method

.method public static final getCalendarProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    move-result-object v0

    return-object v0
.end method

.method public static final getContactsProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    move-result-object v0

    return-object v0
.end method

.method public static final getMediaProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 135
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/media/MediaProxy;

    move-result-object v0

    return-object v0
.end method

.method public static final getMessageProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    move-result-object v0

    return-object v0
.end method

.method public static final getSystemInfoProxy(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;

    move-result-object v0

    return-object v0
.end method
