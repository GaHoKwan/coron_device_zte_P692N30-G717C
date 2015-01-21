.class public Lcom/android/contacts/ext/ContactAccountExtension;
.super Ljava/lang/Object;
.source "ContactAccountExtension.java"


# static fields
.field public static final CONTENTVALUE_ANR_INSERT:I = 0x1

.field public static final CONTENTVALUE_ANR_UPDATE:I = 0x2

.field public static final CONTENTVALUE_INSERT_SIM:I = 0x3

.field public static final CONTENTVALUE_NICKNAME:I = 0x0

.field public static final DB_UPDATE_ANR:I = 0x1

.field public static final DB_UPDATE_NICKNAME:I = 0x0

.field public static final FEATURE_AAS:Ljava/lang/String; = "AAS"

.field public static final FEATURE_SNE:Ljava/lang/String; = "SNE"

.field public static final PROJECTION_ADDRESS_BOOK:I = 0x3

.field public static final PROJECTION_COPY_TO_SIM:I = 0x1

.field public static final PROJECTION_LOAD_DATA:I = 0x2

.field public static final TYPE_OPERATION_AAS:I = 0x0

.field public static final TYPE_OPERATION_INSERT:I = 0x2

.field public static final TYPE_OPERATION_SNE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildOperation(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .parameter "accountType"
    .parameter
    .parameter "anrList"
    .parameter "text"
    .parameter "backRef"
    .parameter "type"
    .parameter "commd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/ArrayList;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public buildOperationFromCursor(Ljava/lang/String;Ljava/util/ArrayList;Landroid/database/Cursor;ILjava/lang/String;)Z
    .locals 1
    .parameter "accountType"
    .parameter
    .parameter "cursor"
    .parameter "index"
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public buildValuesForSim(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"
    .parameter "context"
    .parameter "values"
    .parameter
    .parameter
    .parameter "maxAnrCount"
    .parameter "dstSlotId"
    .parameter "anrsList"
    .parameter "commd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/util/ArrayList;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 150
    .local p4, additionalNumberArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, phoneTypeArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public checkOperationBuilder(Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;Landroid/database/Cursor;ILjava/lang/String;)Z
    .locals 2
    .parameter "accountType"
    .parameter "builder"
    .parameter "cursor"
    .parameter "type"
    .parameter "commd"

    .prologue
    const/4 v1, 0x2

    .line 140
    if-ne p4, v1, :cond_0

    .line 141
    const-string v0, "data2"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSlot(Ljava/lang/String;)I
    .locals 1
    .parameter "commd"

    .prologue
    .line 54
    const/4 v0, -0x1

    return v0
.end method

.method public getCustomTypeLabel(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"
    .parameter "customColumn"
    .parameter "commd"

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProjection(I[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "type"
    .parameter "defaultProjection"
    .parameter "commd"

    .prologue
    .line 162
    return-object p2
.end method

.method public getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"
    .parameter "type"
    .parameter "label"
    .parameter "slotId"
    .parameter "commd"

    .prologue
    .line 84
    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hidePhoneLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"
    .parameter "mimeType"
    .parameter "value"
    .parameter "commd"

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"
    .parameter "commd"

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isFeatureEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "commd"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isPhone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"
    .parameter "commd"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isTextValid(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .parameter "text"
    .parameter "slotId"
    .parameter "feature"
    .parameter "cmd"

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public needNewDataKind(Ljava/lang/String;)Z
    .locals 1
    .parameter "commd"

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentSlot(ILjava/lang/String;)V
    .locals 0
    .parameter "slotId"
    .parameter "commd"

    .prologue
    .line 51
    return-void
.end method

.method public switchSimGuide(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "type"
    .parameter "commd"

    .prologue
    .line 173
    return-void
.end method

.method public updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .parameter "accountType"
    .parameter "updatevalues"
    .parameter "anrsList"
    .parameter "text"
    .parameter "type"
    .parameter "commd"

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public updateDataToDb(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;JILjava/lang/String;)Z
    .locals 1
    .parameter "accountType"
    .parameter "resolver"
    .parameter "newArr"
    .parameter "oldArr"
    .parameter "rawId"
    .parameter "type"
    .parameter "commd"

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method
