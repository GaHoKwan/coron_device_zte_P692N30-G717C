.class public Lcom/mediatek/apst/util/entity/contacts/RawContact$UnknownContactDataTypeException;
.super Ljava/lang/Exception;
.source "RawContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/util/entity/contacts/RawContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnknownContactDataTypeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mMimeType:I

.field final synthetic this$0:Lcom/mediatek/apst/util/entity/contacts/RawContact;


# direct methods
.method public constructor <init>(Lcom/mediatek/apst/util/entity/contacts/RawContact;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "className"
    .parameter "mimeType"

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact$UnknownContactDataTypeException;->this$0:Lcom/mediatek/apst/util/entity/contacts/RawContact;

    .line 1402
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 1404
    iput-object p2, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact$UnknownContactDataTypeException;->mClassName:Ljava/lang/String;

    .line 1405
    iput p3, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact$UnknownContactDataTypeException;->mMimeType:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type of contact data, its class name is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1411
    iget-object v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact$UnknownContactDataTypeException;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MIME type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/apst/util/entity/contacts/RawContact$UnknownContactDataTypeException;->mMimeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
