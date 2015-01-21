.class public Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;
.super Lcom/android/contacts/PhoneCallDetails;
.source "OP09PhoneCallDetails.java"


# static fields
.field public static final DISPLAY_TYPE_DEFAULT_CALL:I = 0x1

.field public static final DISPLAY_TYPE_NEW_CALL:I = 0x2

.field public static final DISPLAY_TYPE_TEXT:I = 0x3


# instance fields
.field public final displayType:I


# direct methods
.method public constructor <init>(I)V
    .locals 15
    .parameter "displayType"

    .prologue
    .line 67
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJIIILjava/lang/String;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/PhoneCallDetails;I)V
    .locals 21
    .parameter "phoneCallDetails"
    .parameter "displayType"

    .prologue
    .line 58
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/contacts/PhoneCallDetails;->countryIso:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/contacts/PhoneCallDetails;->callType:I

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/contacts/PhoneCallDetails;->date:J

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/contacts/PhoneCallDetails;->duration:J

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/contacts/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/contacts/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/contacts/PhoneCallDetails;->vtCall:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/contacts/PhoneCallDetails;->callCount:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/PhoneCallDetails;->ipPrefix:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v1, p0

    move/from16 v20, p2

    invoke-direct/range {v1 .. v20}, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJIIILjava/lang/String;I)V
    .locals 21
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callType"
    .parameter "date"
    .parameter "duration"
    .parameter "simId"
    .parameter "vtCall"
    .parameter "callCount"
    .parameter "ipPrefix"
    .parameter "displayType"

    .prologue
    .line 42
    const-string v12, ""

    const/4 v13, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move-object/from16 v20, p13

    invoke-direct/range {v2 .. v20}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;)V

    .line 44
    move/from16 v0, p14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;->displayType:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;I)V
    .locals 1
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callType"
    .parameter "date"
    .parameter "duration"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "simId"
    .parameter "vtCall"
    .parameter "callCount"
    .parameter "ipPrefix"
    .parameter "displayType"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p18}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;)V

    .line 54
    move/from16 v0, p19

    iput v0, p0, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;->displayType:I

    .line 55
    return-void
.end method
