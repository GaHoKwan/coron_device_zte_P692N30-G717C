.class final Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$2;
.super Ljava/lang/Object;
.source "StandardInterfaceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->p2HS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 37

    .prologue
    .line 4250
    const/4 v9, 0x0

    .line 4254
    .local v9, con:Ljava/lang/Object;
    :try_start_0
    new-instance v30, Ljava/lang/String;

    const-string v31, "amF2YS5uZXQuVVJM"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v30 .. v30}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 4255
    .local v7, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v4, v0, [Ljava/lang/Class;

    const/16 v30, 0x0

    const-class v31, Ljava/lang/String;

    aput-object v31, v4, v30

    .line 4256
    .local v4, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {v7, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 4258
    .local v10, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/String;

    const-string v33, "aHR0cDovL2Nsb3VkLnp0ZWRldmljZXMuY29tL2hzLw=="

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/String;-><init>([B)V

    aput-object v32, v30, v31

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 4265
    .local v28, u:Ljava/lang/Object;
    new-instance v30, Ljava/lang/String;

    const-string v31, "b3BlbkNvbm5lY3Rpb24="

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 4268
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0Q29ubmVjdFRpbWVvdXQ="

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x7530

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4270
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVhZFRpbWVvdXQ="

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x2710

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4272
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0RG9PdXRwdXQ="

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4274
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0RG9JbnB1dA=="

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4276
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0VXNlQ2FjaGVz"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4278
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdE1ldGhvZA=="

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    new-instance v33, Ljava/lang/String;

    const-string v34, "UE9TVA=="

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    const/16 v35, 0x2

    invoke-static/range {v34 .. v35}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/String;-><init>([B)V

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4280
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    new-instance v33, Ljava/lang/String;

    const-string v34, "Y29udGVudC10eXBl"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    const/16 v35, 0x2

    invoke-static/range {v34 .. v35}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/String;-><init>([B)V

    aput-object v33, v31, v32

    const/16 v32, 0x1

    new-instance v33, Ljava/lang/String;

    const-string v34, "YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFt"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    const/16 v35, 0x2

    invoke-static/range {v34 .. v35}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/String;-><init>([B)V

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4282
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v18

    .line 4283
    .local v18, k4:[B
    const/16 v30, 0x10

    move/from16 v0, v30

    new-array v15, v0, [B

    .line 4284
    .local v15, k:[B
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x10

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4286
    const/16 v30, 0xa2

    move/from16 v0, v30

    new-array v12, v0, [B

    fill-array-data v12, :array_0

    .line 4287
    .local v12, encodedKey:[B
    const/16 v16, 0x0

    .line 4288
    .local v16, k2:Ljava/security/Key;
    const-string v30, "RSA"

    invoke-static/range {v30 .. v30}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v19

    .line 4289
    .local v19, keyFactory:Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v12}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 4290
    .local v5, bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v16

    .line 4292
    const/16 v30, 0x10

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    .line 4295
    .local v17, k3:[B
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p0"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4298
    new-instance v31, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v32, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v30, 0x0

    const-string v33, "p1"

    aput-object v33, v32, v30

    const/16 v33, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    new-instance v34, Ljava/lang/String;

    const-string v35, "Z2V0RGlk"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    const/16 v36, 0x2

    invoke-static/range {v35 .. v36}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>([B)V

    const/16 v35, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v34, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4301
    new-instance v31, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v32, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v30, 0x0

    const-string v33, "p2"

    aput-object v33, v32, v30

    const/16 v33, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    new-instance v34, Ljava/lang/String;

    const-string v35, "Z2V0TW5hbWU="

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    const/16 v36, 0x2

    invoke-static/range {v35 .. v36}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>([B)V

    const/16 v35, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4303
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->getEngineName()Ljava/lang/String;

    move-result-object v13

    .line 4305
    .local v13, engine:Ljava/lang/String;
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p3"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {v13, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4307
    const/16 v29, 0x33

    .line 4309
    .local v29, version:I
    :try_start_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v29, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4314
    :goto_0
    :try_start_2
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p4"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4316
    const-wide/16 v21, 0x0

    .line 4318
    .local v21, mask:J
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getMask()J

    move-result-wide v21

    .line 4321
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p5"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4324
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p6"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v33

    const-string v34, "i6"

    invoke-virtual/range {v33 .. v34}, Lcom/zte/heartyservice/main/HeartyServiceApp;->find(Ljava/lang/String;)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4327
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p7"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v33

    const-string v34, "i7"

    invoke-virtual/range {v33 .. v34}, Lcom/zte/heartyservice/main/HeartyServiceApp;->find(Ljava/lang/String;)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4329
    const/16 v23, 0xa

    .local v23, n:I
    :goto_1
    const/16 v30, 0x20

    move/from16 v0, v23

    move/from16 v1, v30

    if-gt v0, v1, :cond_0

    .line 4330
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "p"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 4331
    .local v25, pN:Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "i"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4333
    .local v14, iN:Ljava/lang/String;
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v25, v31, v32

    const/16 v32, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Lcom/zte/heartyservice/main/HeartyServiceApp;->find(Ljava/lang/String;)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4329
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 4337
    .end local v14           #iN:Ljava/lang/String;
    .end local v25           #pN:Ljava/lang/String;
    :cond_0
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p50"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    sget v33, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4340
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p51"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    sget-object v33, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4343
    new-instance v31, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v32, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v30, 0x0

    const-string v33, "p52"

    aput-object v33, v32, v30

    const/16 v33, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    new-instance v34, Ljava/lang/String;

    const-string v35, "Z2V0U2lk"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    const/16 v36, 0x2

    invoke-static/range {v35 .. v36}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>([B)V

    const/16 v35, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4346
    new-instance v31, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v32, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v30, 0x0

    const-string v33, "p53"

    aput-object v33, v32, v30

    const/16 v33, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    new-instance v34, Ljava/lang/String;

    const-string v35, "dGVzdA=="

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->getBytes()[B

    move-result-object v35

    const/16 v36, 0x2

    invoke-static/range {v35 .. v36}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/String;-><init>([B)V

    const/16 v35, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4349
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p54"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->isWidgetOnScreen()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4352
    new-instance v31, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v32, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v30, 0x0

    const-string v33, "p55"

    aput-object v33, v32, v30

    const/16 v33, 0x1

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMonitorEnable()Z

    move-result v30

    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_2

    const-string v30, "1"

    :goto_2
    move-object/from16 v0, v30

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4355
    new-instance v31, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v32, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v30, 0x0

    const-string v33, "p56"

    aput-object v33, v32, v30

    const/16 v33, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    const-string v34, "show_battery_notice"

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v30

    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_3

    const-string v30, "1"

    :goto_3
    move-object/from16 v0, v30

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4358
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p57"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getRetrieveStatus()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4361
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p58"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getLastBackupTime()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4363
    const-wide/16 v26, 0x0

    .line 4364
    .local v26, size:J
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_1

    .line 4365
    new-instance v30, Ljava/io/File;

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Lcom/zte/filexplorer/FileHelper;->getFileSize(Ljava/io/File;)J

    move-result-wide v26

    .line 4369
    :cond_1
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p59"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4372
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p60"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4375
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p61"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v33

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4378
    new-instance v31, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v32, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v30, 0x0

    const-string v33, "p62"

    aput-object v33, v32, v30

    const/16 v33, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getFloaterOpen()Z

    move-result v30

    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    const-string v30, "1"

    :goto_4
    move-object/from16 v0, v30

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4381
    new-instance v31, Ljava/lang/String;

    const-string v30, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    const/16 v32, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v30, 0x0

    const-string v33, "p63"

    aput-object v33, v32, v30

    const/16 v33, 0x1

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMarkMonitorEnable()Z

    move-result v30

    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_5

    const-string v30, "1"

    :goto_5
    move-object/from16 v0, v30

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4384
    new-instance v30, Ljava/lang/String;

    const-string v31, "c2V0UmVxdWVzdFByb3BlcnR5"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "p64"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    sget-object v33, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4386
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppDownloadInfoSQLiteOpenHelper()Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;->getAllRecords()Ljava/util/List;

    move-result-object v20

    .line 4388
    .local v20, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;>;"
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getBody(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 4391
    .local v6, body:Ljava/lang/String;
    new-instance v30, Ljava/lang/String;

    const-string v31, "Y29ubmVjdA=="

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4394
    new-instance v30, Ljava/lang/String;

    const-string v31, "Z2V0T3V0cHV0U3RyZWFt"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/io/OutputStream;

    .line 4395
    .local v24, out:Ljava/io/OutputStream;
    invoke-static {v6, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString2Bytes(Ljava/lang/String;[B)[B

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 4396
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->flush()V

    .line 4397
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V

    .line 4400
    new-instance v30, Ljava/lang/String;

    const-string v31, "Z2V0UmVzcG9uc2VDb2Rl"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4402
    .local v8, code:I
    const/16 v30, 0xc8

    move/from16 v0, v30

    if-ne v8, v0, :cond_7

    .line 4403
    const/16 v23, 0xa

    :goto_6
    const/16 v30, 0x20

    move/from16 v0, v23

    move/from16 v1, v30

    if-gt v0, v1, :cond_6

    .line 4404
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "i"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/zte/heartyservice/main/HeartyServiceApp;->reset(Ljava/lang/String;)V

    .line 4403
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 4352
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #code:I
    .end local v20           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;>;"
    .end local v24           #out:Ljava/io/OutputStream;
    .end local v26           #size:J
    :cond_2
    const-string v30, "0"

    goto/16 :goto_2

    .line 4355
    :cond_3
    const-string v30, "0"

    goto/16 :goto_3

    .line 4378
    .restart local v26       #size:J
    :cond_4
    const-string v30, "0"

    goto/16 :goto_4

    .line 4381
    :cond_5
    const-string v30, "0"

    goto/16 :goto_5

    .line 4406
    .restart local v6       #body:Ljava/lang/String;
    .restart local v8       #code:I
    .restart local v20       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;>;"
    .restart local v24       #out:Ljava/io/OutputStream;
    :cond_6
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "key_sta_check"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4407
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppDownloadInfoSQLiteOpenHelper()Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;->deleteRecords(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4412
    :cond_7
    if-eqz v9, :cond_8

    .line 4414
    new-instance v30, Ljava/lang/String;

    const-string v31, "ZGlzY29ubmVjdA=="

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4416
    :cond_8
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->access$002(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 4418
    .end local v4           #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v5           #bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    .end local v6           #body:Ljava/lang/String;
    .end local v7           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #code:I
    .end local v9           #con:Ljava/lang/Object;
    .end local v10           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v12           #encodedKey:[B
    .end local v13           #engine:Ljava/lang/String;
    .end local v15           #k:[B
    .end local v16           #k2:Ljava/security/Key;
    .end local v17           #k3:[B
    .end local v18           #k4:[B
    .end local v19           #keyFactory:Ljava/security/KeyFactory;
    .end local v20           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppDownloadInfo;>;"
    .end local v21           #mask:J
    .end local v23           #n:I
    .end local v24           #out:Ljava/io/OutputStream;
    .end local v26           #size:J
    .end local v28           #u:Ljava/lang/Object;
    .end local v29           #version:I
    :goto_7
    return-void

    .line 4409
    :catch_0
    move-exception v11

    .line 4410
    .local v11, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4412
    if-eqz v9, :cond_9

    .line 4414
    new-instance v30, Ljava/lang/String;

    const-string v31, "ZGlzY29ubmVjdA=="

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4416
    :cond_9
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->access$002(Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_7

    .line 4412
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v30

    if-eqz v9, :cond_a

    .line 4414
    new-instance v31, Ljava/lang/String;

    const-string v32, "ZGlzY29ubmVjdA=="

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    const/16 v33, 0x2

    invoke-static/range {v32 .. v33}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/String;-><init>([B)V

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v9, v0, v1}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4416
    :cond_a
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->access$002(Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v30

    .line 4310
    .restart local v4       #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v5       #bobPubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    .restart local v7       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v9       #con:Ljava/lang/Object;
    .restart local v10       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v12       #encodedKey:[B
    .restart local v13       #engine:Ljava/lang/String;
    .restart local v15       #k:[B
    .restart local v16       #k2:Ljava/security/Key;
    .restart local v17       #k3:[B
    .restart local v18       #k4:[B
    .restart local v19       #keyFactory:Ljava/security/KeyFactory;
    .restart local v28       #u:Ljava/lang/Object;
    .restart local v29       #version:I
    :catch_1
    move-exception v30

    goto/16 :goto_0

    .line 4286
    nop

    :array_0
    .array-data 0x1
        0x30t
        0x81t
        0x9ft
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        0x86t
        0x48t
        0x86t
        0xf7t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        0x81t
        0x8dt
        0x0t
        0x30t
        0x81t
        0x89t
        0x2t
        0x81t
        0x81t
        0x0t
        0xc3t
        0x58t
        0xaet
        0x77t
        0xfft
        0x22t
        0x2bt
        0xd3t
        0x3ft
        0x3dt
        0xc6t
        0x8t
        0xa5t
        0x31t
        0xc6t
        0x0t
        0x67t
        0x1bt
        0x44t
        0xc6t
        0x2t
        0xc8t
        0xd9t
        0xd4t
        0xet
        0xf2t
        0xb6t
        0xe4t
        0xa1t
        0x1ct
        0x4at
        0xf4t
        0x6dt
        0xact
        0x2ft
        0xe2t
        0x2dt
        0x14t
        0xe3t
        0xb7t
        0x39t
        0xfat
        0x67t
        0x7bt
        0x78t
        0x18t
        0x5bt
        0xc2t
        0x13t
        0x38t
        0x6bt
        0x74t
        0x5ft
        0xc8t
        0xe0t
        0x39t
        0x35t
        0x91t
        0x3bt
        0xf7t
        0x5ft
        0xe9t
        0xb3t
        0x53t
        0x9dt
        0xe5t
        0xa7t
        0xeat
        0x77t
        0x2t
        0xc0t
        0x54t
        0x11t
        0x7et
        0x2t
        0xact
        0xa7t
        0x9at
        0xa7t
        0xc3t
        0x89t
        0xcat
        0xbet
        0xe3t
        0x65t
        0x5t
        0x58t
        0x87t
        0x17t
        0xa8t
        0x54t
        0xa2t
        0x5t
        0x67t
        0xdt
        0x61t
        0x4ct
        0x61t
        0x62t
        0xc6t
        0xbft
        0xc4t
        0x67t
        0x89t
        0xd9t
        0xd5t
        0x22t
        0xf4t
        0xf6t
        0x55t
        0x2t
        0x60t
        0xfat
        0x88t
        0x25t
        0xcft
        0x12t
        0x4bt
        0xfet
        0x17t
        0x3et
        0xf3t
        0x23t
        0x42t
        0x58t
        0x5ct
        0x6t
        0x39t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 4292
    nop

    :array_1
    .array-data 0x1
        0x43t
        0xf3t
        0x5t
        0x22t
        0xb2t
        0xa6t
        0x2et
        0xe2t
        0x39t
        0x58t
        0x25t
        0x38t
        0xe0t
        0x2dt
        0x44t
        0xb7t
    .end array-data
.end method
