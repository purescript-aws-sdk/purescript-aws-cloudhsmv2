## Module AWS.CloudHSMV2

<p>For more information about AWS CloudHSM, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a> and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>.</p>

#### `Service`

``` purescript
newtype Service
  = Service Service
```

#### `service`

``` purescript
service :: forall eff. Options -> Eff (exception :: EXCEPTION | eff) Service
```


