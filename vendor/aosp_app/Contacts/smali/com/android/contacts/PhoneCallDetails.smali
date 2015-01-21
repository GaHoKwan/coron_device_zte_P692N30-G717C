.class public Lcom/android/contacts/PhoneCallDetails;
.super Ljava/lang/Object;
.source "PhoneCallDetails.java"


# instance fields
.field public final callCount:I

.field public final callType:I

.field public final contactUri:Landroid/net/Uri;

.field public final countryIso:Ljava/lang/String;

.field public final date:J

.field public final duration:J

.field public final formattedNumber:Ljava/lang/CharSequence;

.field public final geocode:Ljava/lang/String;

.field public final ipPrefix:Ljava/lang/String;

.field public final name:Ljava/lang/CharSequence;

.field public final number:Ljava/lang/CharSequence;

.field public final numberLabel:Ljava/lang/CharSequence;

.field public final numberType:I

.field public final photoUri:Landroid/net/Uri;

.field public final simId:I

.field public final vtCall:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJIIILjava/lang/String;)V
    .locals 19
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

    .prologue
    .line 112
    const-string v10, ""

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move-object/from16 v18, p13

    invoke-direct/range {v0 .. v18}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;)V
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

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 122
    iput-object p2, p0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 123
    iput-object p3, p0, Lcom/android/contacts/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 125
    iput p5, p0, Lcom/android/contacts/PhoneCallDetails;->callType:I

    .line 126
    iput-wide p6, p0, Lcom/android/contacts/PhoneCallDetails;->date:J

    .line 127
    iput-wide p8, p0, Lcom/android/contacts/PhoneCallDetails;->duration:J

    .line 128
    iput-object p10, p0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 129
    iput p11, p0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    .line 130
    iput-object p12, p0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 131
    iput-object p13, p0, Lcom/android/contacts/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 132
    iput-object p14, p0, Lcom/android/contacts/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 133
    move/from16 v0, p15

    iput v0, p0, Lcom/android/contacts/PhoneCallDetails;->simId:I

    .line 134
    move/from16 v0, p16

    iput v0, p0, Lcom/android/contacts/PhoneCallDetails;->vtCall:I

    .line 135
    move/from16 v0, p17

    iput v0, p0, Lcom/android/contacts/PhoneCallDetails;->callCount:I

    .line 136
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/contacts/PhoneCallDetails;->ipPrefix:Ljava/lang/String;

    .line 137
    return-void
.end method
