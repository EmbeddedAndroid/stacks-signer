        ;; stacker DB
        (define-read-only (stackerdb-get-signer-slots)
            (ok (list
                {
                    signer: 'ST3SGR0WXBV8PJVXK58MVQ3K8E4V4DR5YNZDBVK7J,
                    num-slots: u10
                }
                {
                    signer: 'ST125P30WFF7TGJ0TG58SZ0YBMYZJ95MFHJX76QD5,
                    num-slots: u10
                }
                {
                    signer: 'ST1JZGEYPXTYJQ3A599W105QA3ZK6ZTFGY6RQF4ZM,
                    num-slots: u10
                }
                {
                    signer: 'ST2BDHD685AXX4DEMGGDGA4KYVX05B894EVG5M441,
                    num-slots: u10
                }
                {
                    signer: 'ST26AWWE3VQG12CDH2T77AEBWCYM38ABC5K6P1CV8,
                    num-slots: u10
                }
                )))

        (define-read-only (stackerdb-get-config)
            (ok {
                chunk-size: u4096,
                write-freq: u0,
                max-writes: u4096,
                max-neighbors: u32,
                hint-replicas: (list )
            }))
    