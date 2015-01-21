.class public final Lcom/android/contacts/ContactsApplication;
.super Landroid/app/Application;
.source "ContactsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsApplication$DelayedInitializer;
    }
.end annotation


# static fields
.field private static final ENABLE_FRAGMENT_LOG:Z = false

.field private static final ENABLE_LOADER_LOG:Z = false

.field private static final TAG:Ljava/lang/String; = null

.field public static final sDialerSearchSupport:Z = true

.field private static sInjectedServices:Lcom/android/contacts/test/InjectedServices; = null

.field private static sMe:Lcom/android/contacts/ContactsApplication; = null

.field public static final sSpeedDial:Z = true


# instance fields
.field protected TEST_NUMBER:Ljava/lang/String;

.field public cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field public final singleTaskService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/android/contacts/ContactsApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactsApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 239
    const-string v0, "10086"

    iput-object v0, p0, Lcom/android/contacts/ContactsApplication;->TEST_NUMBER:Ljava/lang/String;

    .line 245
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsApplication;->singleTaskService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInjectedServices()Lcom/android/contacts/test/InjectedServices;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    return-object v0
.end method

.method public static getInstance()Lcom/android/contacts/ContactsApplication;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/contacts/ContactsApplication;->sMe:Lcom/android/contacts/ContactsApplication;

    return-object v0
.end method

.method public static injectServices(Lcom/android/contacts/test/InjectedServices;)V
    .locals 0
    .parameter "services"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 74
    sput-object p0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    .line 75
    return-void
.end method

.method public static isContactsApplicationBusy()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 255
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->isProcessing(I)Z

    move-result v3

    .line 256
    .local v3, isMultiDeleting:Z
    invoke-static {v5}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->isProcessing(I)Z

    move-result v2

    .line 257
    .local v2, isMultiCopying:Z
    invoke-static {v5}, Lcom/android/contacts/vcard/VCardService;->isProcessing(I)Z

    move-result v4

    .line 258
    .local v4, isVcardProcessing:Z
    invoke-static {}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;->isMoveContactsInProcessing()Z

    move-result v0

    .line 259
    .local v0, isGroupMoving:Z
    invoke-static {}, Lcom/android/contacts/ContactSaveService;->isGroupTransactionProcessing()Z

    move-result v1

    .line 260
    .local v1, isGroupSavingInTransaction:Z
    sget-object v6, Lcom/android/contacts/ContactsApplication;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isContactsApplicationBusy] multi-del: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", multi-copy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", vcard: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", group-move: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", group-trans: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 83
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 89
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 94
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, prefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 101
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 106
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 107
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1, p1}, Lcom/android/contacts/test/InjectedServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, service:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 137
    .end local v0           #service:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 113
    :cond_0
    const-string v1, "contactAccountTypes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    if-nez v1, :cond_1

    .line 115
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    goto :goto_0

    .line 120
    :cond_2
    const-string v1, "contactPhotos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v1, :cond_3

    .line 122
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 123
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsApplication;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 124
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->preloadPhotosInBackground()V

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    goto :goto_0

    .line 129
    :cond_4
    const-string v1, "contactListFilter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 130
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-nez v1, :cond_5

    .line 131
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->createContactListFilterController(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    goto :goto_0

    .line 137
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 146
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 148
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "ContactsPerf"

    const-string v2, "ContactsApplication.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    const-string v1, "ContactsStrictMode"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 166
    :cond_1
    new-instance v1, Lcom/android/contacts/ContactsApplication$DelayedInitializer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactsApplication$DelayedInitializer;-><init>(Lcom/android/contacts/ContactsApplication;Lcom/android/contacts/ContactsApplication$1;)V

    invoke-virtual {v1}, Lcom/android/contacts/ContactsApplication$DelayedInitializer;->execute()V

    .line 168
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    const-string v1, "ContactsPerf"

    const-string v2, "ContactsApplication.onCreate finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    sput-object p0, Lcom/android/contacts/ContactsApplication;->sMe:Lcom/android/contacts/ContactsApplication;

    .line 177
    invoke-static {p0}, Lcom/mediatek/calloption/SimAssociateHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/calloption/SimAssociateHandler;->prepair()V

    .line 178
    invoke-static {p0}, Lcom/mediatek/calloption/SimAssociateHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/calloption/SimAssociateHandler;->load()V

    .line 180
    new-instance v1, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 181
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Lcom/android/contacts/ContactsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 182
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/phone/SIMInfoWrapper;->init(Landroid/content/Context;)V

    .line 186
    new-instance v1, Lcom/android/contacts/ContactsApplication$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsApplication$1;-><init>(Lcom/android/contacts/ContactsApplication;)V

    invoke-virtual {v1}, Lcom/android/contacts/ContactsApplication$1;->start()V

    .line 195
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/phone/HyphonManager;->init(Landroid/content/Context;)V

    .line 196
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/contacts/ContactsApplication$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/ContactsApplication$2;-><init>(Lcom/android/contacts/ContactsApplication;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 210
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 212
    .local v0, mNotificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 216
    return-void
.end method
